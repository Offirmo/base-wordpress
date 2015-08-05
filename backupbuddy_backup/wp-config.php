<?php


// ** MySQL settings ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'username');

/** MySQL database password */
define('DB_PASSWORD', 'password');

/** MySQL hostname */
define('DB_HOST', 'mysql');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('AUTH_KEY',         'o_pwx43sL_8*LDBxID.q/{}kF6)eB`&C?JcT2:-lIW?FjU&,ReZKyJu-(,PmIwZ]');
define('SECURE_AUTH_KEY',  '<{hYE;-.~jexok)giq8~e!Fohj^:Z `m}:]%)A~yZQxF8{iHE}6ORC_J|vAWK!B|');
define('LOGGED_IN_KEY',    '5JN_+f]>${4$4u. obS9Va@~l#:J=<OW$*[1rTrHCOA088B*kOSHPX+(-E=]6jFt');
define('NONCE_KEY',        'kj1pa;1Bgl%ni<P@HtYU];h9OGHu&~~m|:5tS!4f5qhf19YD$0D ucj]s%&$G*|F');
define('AUTH_SALT',        '*~rp*E@%ZVA{*g>p]Hn9EkS!ddO#-N-Ns_]&nt+55`e@I&b|2S},R&om[>g-4E47');
define('SECURE_AUTH_SALT', 'pj>0i8Oxp;2y`B.OMt7`n2o,O9vHw}j+&i4%gp@41[b+(]4]R7})([gw/]Jnlm&u');
define('LOGGED_IN_SALT',   '$i!`b{6lwxR8`Nw@8;sKy(CknEZQ-xJRZjsP--F,Ly+~e=omU.[TvGR&-k! IRsv');
define('NONCE_SALT',       '3-=G&Z;{,k-qCJnSR1]Mek|XO6o(Y1M3?+|Om5dE=KWy8^k+=BRy4F4,}|UcqX)3');


$table_prefix = 'xr7h81hn_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
