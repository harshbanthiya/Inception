<?php
/*
    The base config for wordpress 

    The wp-config.php creation script uses this file during installation
    You dont have to use the website, you can copy this file to "wp-config.php"
    and fill in the values

    This file contains the following configs 
    My SQL settings 
    Secret Keys 
    Database table prefix 
    ABSPATH

    @link https://wordpress.org/support/article/editing-wp-config-php/
    @package WordPress
*/

// https://github.com/rhubarbgroup/redis-cache/wiki/Connection-Parameters

// MySQL settings - You can get this info from your web host ** //
/* The name of the database for WordPress */
define( 'DB_NAME', getenv('MARIADB_DB') );

/** MySQL database username */
define( 'DB_USER', getenv('MARIADB_USER') );

/** MySQL database password */
define( 'DB_PASSWORD', getenv('MARIADB_PWD') );

/** MySQL hostname */
define( 'DB_HOST', getenv('MARIADB_HOST') ); #. ':' . getenv('MARIADB_PORT') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/*
    Authentication unique keys and salts.
 
    Change these to different unique phrases! You can generate these using
    the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 
    You can change these at any point in time to invalidate all existing cookies.
    This will force all users to have to log in again.
*/

define('AUTH_KEY',         ';XPFP6i~6h+i]TRmL8+4PFNi:ga8gDtvM+,qr9 =DZUjlf/rb39=jMsX*Puedr[:');
define('SECURE_AUTH_KEY',  'qlX6^()EwE>=Ff?+9#YD(UW?Q9O/t3h7VW%hKOyiDH/aL$o7g,o|h;tf.:$X_GKG');
define('LOGGED_IN_KEY',    '@z4tc+6~<aLDEXUu^_|#4<a.S.(upW)>ZT66!2qM{%-2V~$`4rvN00RpxX _eN,?');
define('NONCE_KEY',        '|zC5>(|Y4TWa(inOU4v04| E+`Sv>_$qp1Bman@-M?!X7+;LCrx{T$W0*s9!{R=.');
define('AUTH_SALT',        '82# GN!6imr+$`!} C2D>txh]y{`Jwxsd%n}C-+Dtt_nj0if6fXgY911t<9#nDA=');
define('SECURE_AUTH_SALT', 'l:al-lOhSr%=T_(sg ,;8M@qjnoz@u52+yt2U43G+bar4J)4RwRVJ#.9yJI0=c=A');
define('LOGGED_IN_SALT',   'kJ|,udy3m[A=2a,hfh/$6KYimsZM|j7F_$O|FKF:5Q|?2kUtleJLD:-j$lgH9MAA');
define('NONCE_SALT',       'TNkQ5fgZ-#b,a1)3B++kHj[5u0 ~x>RZ9mmh6_fv/IQ#-8WfA<=drYRzWJd!B,=f');

/*
    Wordpress database table prefix
    You can have multiple installations in one databse if you give each a unique prefix.
    Only Numbers, letters and underscores !
*/

$table_prefix = 'wp_';

/*
    For devs : Wordpress debugging mode 
    Change to true to enable the display of notices during developement. 
    @link https://wordpress.org/support/article/debugging-in-wordpress/
*/

define('WP_DEBUG', false);

// Absolute Path to WP directory 
if ( ! defined('ABSPATH') ) {
        define('ABSPATH', __DIR__ . '/');
}

// Sets up Wordpress Vars and included files 
require_once ABSPATH . 'wp-settings.php';