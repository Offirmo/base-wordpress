# base-wordpress
A wordpress seed for quickly mounting quality wordpress sites

Using wp-cli

```bash
sudo ./wp.sh start base --port 10000 --no-src
sudo docker exec -it "wp_base" bash
```
puis dans le bash du conteneur :
```bash
cd
apt-get update
apt-get upgrade --yes
apt-get install curl --yes
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info --allow-root
chmod +x wp-cli.phar
cp wp-cli.phar /usr/local/bin/wp
```

go wordpress
```
cd /var/www/html/
rm -rf *
rm -rf .*
wp --allow-root core download --locale=fr_FR
wp --allow-root core config --dbname=wordpress --dbuser=username --dbpass=password --dbhost=mysql --dbprefix=xr7h81hn_ --locale=fr_FR
wp --allow-root db drop
wp --allow-root db create
wp --allow-root core install --url=http://192.168.88.88:10003  --title="WP test 03" --admin_user=adminzero --admin_password=adminzero --admin_email=ye.jutard@gmail.com
wp --allow-root core language list
wp --allow-root core language list --status=installed
wp --allow-root core language install fr_FR
wp --allow-root core language activate fr_FR
wp --allow-root db optimize
wp --allow-root db repair
wp --allow-root user create "Yves-Emmanuel Jutard" "ye.jutard+wpbase@gmail.com" --role=administrator --user_pass=3zZ8jF_Ol4ke --display_name="Prestataire technique" --first_name=Administrateur --last_name=Prestataire
wp --allow-root user delete adminzero --reassign=2
wp --allow-root theme delete twentythirteen twentyfourteen
wp --allow-root plugin uninstall hello --deactivate
wp --allow-root plugin activate akismet
wp --allow-root plugin install jetpack
wp --allow-root plugin install http://offirmo.github.io/html_tests/misc/backupbuddy-5.2.0.10.zip --activate
wp --allow-root plugin install better-wp-security --activate
wp --allow-root plugin install polylang language-icons-flags-switcher --activate
wp --allow-root plugin install simple-drop-cap --activate
wp --allow-root plugin install miwoftp wp-dashboard-notes --activate
wp --allow-root theme install http://offirmo.github.io/html_tests/misc/Etendard-1-016.zip
wp --allow-root theme install http://offirmo.github.io/html_tests/misc/Etendard-enfant.zip --activate
wp --allow-root option list --format=json
wp --allow-root menu create "Menu principal fr"
wp --allow-root menu create "Menu du pied de page fr"
wp --allow-root menu create "Menu principal en"
wp --allow-root menu create "Menu du pied de page en"
wp --allow-root menu create "Menu principal de"
wp --allow-root menu create "Menu du pied de page de"
wp --allow-root menu list
wp --allow-root post list --post_type=page,post
wp --allow-root menu item add-post sidebar-menu 33 --title="Custom Test Post"
```
