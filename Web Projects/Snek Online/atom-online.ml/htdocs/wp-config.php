<?php
define('WP_CACHE', true);
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'epiz_24564568_w338' );

/** MySQL database username */
define( 'DB_USER', '24564568_3' );

/** MySQL database password */
define( 'DB_PASSWORD', 'lS-6]1pz48' );

/** MySQL hostname */
define( 'DB_HOST', 'sql309.byetcluster.com' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '0gsbxypkzna1vptb8i5wdiy51m3ieobjovcklx0tclxzcavpez1mutzexxkhb5wj' );
define( 'SECURE_AUTH_KEY',  'n8hfp1jy6v648wwqepjdqxam3di8txwcrmgv7ep9etx2pb0adgw78ghtb3in5cvq' );
define( 'LOGGED_IN_KEY',    'vlotwhohs5r0mvsdtnlpdcwkl12zyulhfukxkbbnvm1aamp5y8kwc1d8igwquotk' );
define( 'NONCE_KEY',        'rh1rbguobazfa8exlohpdaxq83eqkdd8ojrcerdgc2zqzjopvquqmmy4my2wpypg' );
define( 'AUTH_SALT',        'iobiqgtto0bbafbpliz417jhwprkf8fgh5zbgnzojun4sjeexful1efhhguv7nwg' );
define( 'SECURE_AUTH_SALT', 'ek2lr5cubriq46uwqvdl28lclgs1hh4tsl0w72tdpogvgqyjfwjjfxnbunrzery2' );
define( 'LOGGED_IN_SALT',   'dbhmmsv1yjy7vpxhdhg6plhk22lj1bjppdhofuou4estlifsoemfc6bbpy0mxjfj' );
define( 'NONCE_SALT',       'vpxdferyabua0x8hkpmmy88flmo4udnygh8ht647ljstqj7jridpczdw3s9mgizh' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpuh_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
