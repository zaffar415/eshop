<?php
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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'eshop_DB' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'd~o;[7BEKNr,hJ`IrxX$F6@EEzJ[S*n[1V]SG6=N3}QGsI-B6e*67!1h4o?r47XI' );
define( 'SECURE_AUTH_KEY',  'S#%g^MDBARY11x%^q{Xn#XC-i:Kf$>B/Uj2mhVVaNS7l(D[7^?yqxW]yy[0t|MrF' );
define( 'LOGGED_IN_KEY',    's4@!@(|1Q?9PH04) :/TJE+OPPH1[=(4K6UU*L%SHZyI}2h>K1mvST?O=F yD#1n' );
define( 'NONCE_KEY',        '?j p^8`._ifL0Fih`x:BEZbVG^;!m?bt$ 6k#z-]Sx,WL4kh!y:&2}96V{!9`RaA' );
define( 'AUTH_SALT',        'v5nb((m:eda2q$UBjwaB_t:,HHJ!H[t7cqxjWv4qt2=:}!|7Op@Oh/.!>x,e~Yw]' );
define( 'SECURE_AUTH_SALT', 'I e66@R+iezo9E-) :2b$rE<6LMq 3=`UV^u#6M2Sf=;X<HEE6(!,sOI+tOZW@@a' );
define( 'LOGGED_IN_SALT',   '9~H.]L?9zBzSa`-*{, /^qDNM+R=EVR^cNj0>t.z<AgNw~f[R^)4:xx046!R!i]A' );
define( 'NONCE_SALT',       '}f|V;A$E3bh Qy`~VB@t:P=d32p`whygnIrb&tE9|#vW,V{+Tntq&tu>PeVhUHKV' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

