<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'jbouyer' );

/** Database password */
define( 'DB_PASSWORD', 'fleur' );

/** Database hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('WP_SITEURL', 'https://jbouyer.42.fr/');
define('WP_HOME', 'https://jbouyer.42.fr/wordpress/');

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '9[Jm9k.ByYFQr.D08_<MU~eOyy]E&!,%1U5GCiEuC[+ztf` U92*}V&T.Y3nY~T?' );
define( 'SECURE_AUTH_KEY',   'yXB.m.+g>_tP+b^I&63o,/Q2aOmsOjDN mNn!aT{6GG6G3b*6Zg<oBmB0_`tqPFw' );
define( 'LOGGED_IN_KEY',     'z%9<8x4HWd^|TaUP<mO,Ee$d]ktDxAncQY.EpX}`ZO#Yc6>1t/l>c3 HYfAQh0hl' );
define( 'NONCE_KEY',         'SBJ$o5Ns0c:y>G?vj!(=Y@ ?dcA$_g6LA21-mG/LrZ%^5KLJ2>V}!_?A!39t/9(+' );
define( 'AUTH_SALT',         '$`Cpv-BS3xA9+yOkb=us4]-cvWCI@747c8lPN:j3xzzlbJ91yEYy$HjseC:Bws=x' );
define( 'SECURE_AUTH_SALT',  '0/v|W:S~hFt`$tbE;n +snU%C?bO%7Ce?{2^Xf5zx<S`r=Q;HYq(Y0X/0Lo4tt>>' );
define( 'LOGGED_IN_SALT',    'SqwUK-N%:d}Ia;o/])$CTn?: ti^Gqaif[Y9IvrPZ5SOZF.P#:Z/F|CzYssfc4){' );
define( 'NONCE_SALT',        ']%H=2O9r{|anbfTGxtI Ij+5xKh*yX$XmH}Ha<OLlx^w]!^dy0s.zOL|Nar8M:{I' );
define( 'WP_CACHE_KEY_SALT', 'P)ZHQZZE%P_I8w2SnL]~Hi#B PSIF#WNmTLH}cOpHGshU:_zXf7O~gqFE3t54f7N' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
        define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';