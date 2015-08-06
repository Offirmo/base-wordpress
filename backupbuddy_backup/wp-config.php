<?php

// BEGIN iThemes Security - Do not modify or remove this line
// iThemes Security Config Details: 2
define( 'DISALLOW_FILE_EDIT', true ); // Disable File Editor - Security > Settings > WordPress Tweaks > File Editor
// END iThemes Security - Do not modify or remove this line

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

define('AUTH_KEY',         '+_fO$x[PXRw*~EZ#eHy13KWlJrK`t`<fU?TwwG!(=>ZWzkwERV:h;OtA63.[z};*');
define('SECURE_AUTH_KEY',  '{Lbk&@|28Qk<0Gxe]pm&4Ffx>bju;ba(Mc;r%-*Ly|E+x2|l&c|JH,6C/%X{^X9q');
define('LOGGED_IN_KEY',    '00HCIn@6eeSB7IMMKC)&yOhvq4k>o*k#FRd@5^G9-=/PsJ{3!`I.kPsBfCvuhG,M');
define('NONCE_KEY',        '_ mP%TkYEhaXR{mqYUn9.F/c8sw$YsoIrB=<(,SkdS7UH(~:B=1xqYz=^WZC##`;');
define('AUTH_SALT',        'bU+-QD:T-0apG~i8V9;~urV?@hAO-/F_Sr5>VYNDlNTSk1m6xeERv[P,<%J$@$Zr');
define('SECURE_AUTH_SALT', ':rlN$Z^]?wFj_R$hVfY^;a!+^h1Q_m8%E*qgF<<DqyNa%ohyu6bm6#?K-Z[5!UHc');
define('LOGGED_IN_SALT',   'AXi6Rb,7AJ7cX#A&GC| c{J=OwPm%_pdHy9=A5R0ak3Y=}DqstquiZfW)V9YE+2~');
define('NONCE_SALT',       'jyVJ|?,|iYP<O&j7?z{h+<36Ozr&k*Qte/3>.Y+ejA?YfhsdHgkt #+Nadsk_8E]');


$table_prefix = 'xr7h81hn_';





/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
