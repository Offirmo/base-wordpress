#! /bin/bash

## (re)launch a docker containerized wordpress

echo ""
echo "*** docker wordpress launch ***"
echo ""

## root-only script
[[ `id -u` -ne 0 ]] && echo "Error : run me as root !" && exit 1

function usage {
	echo "`basename $0`"
	echo "  start|stop|rm        the command you want to execute"
	echo "  ID                   an id. ex. 01"
	echo "  --no-src             don't copy wordpress source"
	echo "  --port <port>        the TCP port to use"
	echo "  -h, --help           displays this help"
}

export SCRIPT_DIR=`dirname "$BASH_SOURCE"`
export WORKSPACE="$SCRIPT_DIR"

## check params
export CMD=$1
shift
export ID=$1
shift
export INSTALL_WP_SRC=true
## wordpress *needs* a fixed port to work properly
export PORT=10000
export MYSQL_PASSWORD=password
export MYSQL_DB_NAME=wordpress
export MYSQL_USER_NAME=username

while [[ $# > 0 ]]; do
  case "$1" in

    --no-src)
      INSTALL_WP_SRC=false
    ;;

    --port)
      PORT=$2
      shift
    ;;

    -h|--help)
      usage
      exit 0
    ;;

    *) # Unknown option
      echo "Unknown option : '$1' !" 1>&2
      usage
      exit 1
    ;;
  esac
  shift || (usage && exit 1)
done

[[ -z $ID ]] && echo "Error : I need an id !" && usage && exit 1

export FULL_ID="wp_$ID"
export INSTANCE_DIR="$WORKSPACE/$FULL_ID"

case "$CMD" in
start)
	echo "* Starting a wordpress with id '$FULL_ID'..."
	echo "  port : $PORT"
	echo "  mwsql password : $MYSQL_PASSWORD"
;;

stop)
	echo "* Stopping the wordpress with id '$FULL_ID'..."
;;

rm)
	echo "* Deleting the wordpress with id '$FULL_ID'..."
;;

*) # anything else
	echo "Unknown command : '$CMD' !" 1>&2
	usage
	exit 1
;;
esac


## for convenience, move to a known path
mkdir -p "$WORKSPACE"
pushd "$WORKSPACE" > /dev/null

## ensure directory structure
if [[ ! -f latest.tar.gz ]]; then
	wget https://wordpress.org/latest.tar.gz
	[[ $? -ne "0" ]] && echo "Error : couldn't download latest wordpress sources !"
fi
if [[ ! -d wordpress ]]; then
	tar -xzf latest.tar.gz
	chmod -R go+rwx wordpress/
fi

## for convenience, move to a known path
mkdir -p "$INSTANCE_DIR"
pushd "$INSTANCE_DIR" > /dev/null

export MYSQL_CONTAINER_NAME=${FULL_ID}_mysql
export WP_CONTAINER_NAME=${FULL_ID}

## ensure directory 
mkdir -p mysql
chmod -R go+rwx mysql/
mkdir -p html
chmod -R go+rwx html/

case "$CMD" in
start)
	echo "* launching $MYSQL_CONTAINER_NAME..."
	state=$(docker inspect -f {{.State.Running}} $MYSQL_CONTAINER_NAME)
	if [[ $? -ne "0" ]]; then
		echo "  not found, creating $MYSQL_CONTAINER_NAME..."
		## https://registry.hub.docker.com/_/mysql/
		docker run -d --name $MYSQL_CONTAINER_NAME \
			-e MYSQL_ROOT_PASSWORD=$MYSQL_PASSWORD \
			-e MYSQL_DATABASE=$MYSQL_DB_NAME \
			-e MYSQL_USER=$MYSQL_USER_NAME \
			-e MYSQL_PASSWORD=$MYSQL_PASSWORD \
			-v $(readlink -m mysql):/var/lib/mysql \
			mysql
		[[ $? -ne "0" ]] && echo "Error : couldn't create $MYSQL_CONTAINER_NAME container !" && exit 1
	elif [[ $state == "false" ]]; then
		docker start $MYSQL_CONTAINER_NAME
		[[ $? -ne "0" ]] && echo "Error : couldn't start $MYSQL_CONTAINER_NAME container !" && exit 1
	else
		echo "  already running. ($state)"
	fi
	
	echo "* launching $WP_CONTAINER_NAME..."
	state=$(docker inspect -f {{.State.Running}} $WP_CONTAINER_NAME)
	if [[ $? -ne "0" ]]; then
		echo "  not found, creating $WP_CONTAINER_NAME..."
		if [[ $INSTALL_WP_SRC == true ]]; then
			cp -r ../wordpress/* html
			chmod -R go+rwx html/
		fi
		docker run -d -P --name $WP_CONTAINER_NAME \
			--link $MYSQL_CONTAINER_NAME:mysql \
			-v $(readlink -m html):/var/www/html \
			-p $PORT:80 \
			antfie/wordpress
		[[ $? -ne "0" ]] && echo "Error : couldn't create $WP_CONTAINER_NAME container !" && exit 1
	elif [[ $state == "false" ]]; then
		docker start $WP_CONTAINER_NAME
		[[ $? -ne "0" ]] && echo "Error : couldn't start $WP_CONTAINER_NAME container !" && exit 1
	else
		echo "  already running. ($state)"
	fi
;;

stop)
	docker stop $WP_CONTAINER_NAME
	docker stop $MYSQL_CONTAINER_NAME
;;

rm)
	docker rm -f $WP_CONTAINER_NAME
	docker rm -f $MYSQL_CONTAINER_NAME
;;
esac

popd > /dev/null

case "$CMD" in
start)
	echo
	echo "* Started."
	echo
	echo "* containers status :"
	docker ps
	echo
	echo "* REM : mysql password is '$MYSQL_PASSWORD'"
	echo "* REM : mysql host is 'mysql'"
	echo
	echo "* TIP : to restart this script : sudo ./wp.sh start $ID"
	echo "* TIP : to stop the container  : sudo ./wp.sh stop $ID"
	echo "* TIP : to see logs            : sudo docker logs $WP_CONTAINER_NAME"
	echo "* TIP : to open a terminal     : sudo docker exec -it \"$WP_CONTAINER_NAME\" bash"
	echo "* TIP : to create a phpmyadmin : sudo docker run -d -P --name ${WP_CONTAINER_NAME}_phpmyadmin --link ${MYSQL_CONTAINER_NAME}:mariadb maxexcloo/phpmyadmin"
	echo "         or if already created : sudo docker start ${WP_CONTAINER_NAME}_phpmyadmin
	echo "                       and REM : $MYSQL_USER_NAME / $MYSQL_PASSWORD
;;

stop)
	echo "* Stopped."
;;

rm)
	rm -rf $INSTANCE_DIR
	echo "* Removed."
;;
esac

popd > /dev/null
echo
