<?php

/**
 * Fired during plugin activation
 *
 * @link       piwebsolution.com
 * @since      1.0.0
 *
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/includes
 */

/**
 * Fired during plugin activation.
 *
 * This class defines all code necessary to run during the plugin's activation.
 *
 * @since      1.0.0
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/includes
 * @author     piwebsolution <rajeshsingh520@gmail.com>
 */
class Css_Js_Manager_Activator {

	/**
	 * Short Description. (use period)
	 *
	 * Long Description.
	 *
	 * @since    1.0.0
	 */
	public static function activate() {
		self::css_js_manager_table();
	}

	public static function css_js_manager_table()
	{
		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		$wpdb_collate = $wpdb->collate;
		if($wpdb->get_var("SHOW TABLES LIKE '$table_name'") != $table_name) {
			$sql =
				"CREATE TABLE {$table_name} (
				id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
				url varchar(255) NOT NULL,
				type ENUM('css','js','push') DEFAULT 'css',
				method ENUM('async','defer','normal') DEFAULT 'normal',
				add_remove ENUM('add','remove') DEFAULT 'add',
				apply_on ENUM('all','selected') DEFAULT 'all',
				push ENUM('push','push_preload', 'preload', 'no') DEFAULT 'no',
				state BOOLEAN DEFAULT 1,
				form MEDIUMTEXT
				)
				COLLATE {$wpdb_collate}";

			require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
			dbDelta( $sql );
		}

	}

}
