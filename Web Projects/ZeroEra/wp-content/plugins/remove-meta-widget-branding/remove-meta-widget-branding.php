<?php
/**
 * Remove WordPress.org link on meta widget
 *
 * @package     2ndkauboy
 * @author      Bernhard Kau
 * @license     GPLv3
 *
 * @wordpress-plugin
 * Plugin Name: Remove WordPress.org link on meta widget
 * Plugin URI: https://kau-boys.de
 * Description: Removes the link to WordPress.org in the meta widget
 * Version: 1.0
 * Author: Bernhard Kau
 * Author URI: https://kau-boys.de
 * License: GPLv3
 * License URI: http://www.gnu.org/licenses/gpl-3.0.txt
 */
add_filter( 'widget_meta_poweredby', '__return_empty_string' );