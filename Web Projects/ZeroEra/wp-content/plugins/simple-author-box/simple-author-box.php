<?php

/**
* Plugin Name: 				Simple Author Box
* Description: 				Adds a responsive author box with social icons on your posts.
* Version: 					2.3.3
* Author: 					GreenTreeLabs
* Requires: 				4.6 or higher
* License: 					GPLv3 or later
* License URI:       		http://www.gnu.org/licenses/gpl-3.0.html
* Requires PHP: 			5.6
*
* Copyright 2014-2017		Tiguan				office@tiguandesign.com		
* Copyright 2017-2019 		MachoThemes 		office@machothemes.com
* Copyright 2019			GreenTreeLabs		diego@greentreelabs.net
*
* Original Plugin URI: 		https://tiguan.com/simple-author-box/
* Original Author URI: 		https://tiguan.com
* Original Author: 			https://profiles.wordpress.org/tiguan/
*
* NOTE:
* Tiguan transferred ownership rights on: 09/22/2017 06:38:44 PM when ownership was handed over to MachoThemes
* The MachoThemes ownership period started on: 09/22/2017 06:38:45 PM
* SVN commit proof of ownership transferral: https://plugins.trac.wordpress.org/changeset/1734457/simple-author-box
*
* 2019 - 26th of September
* MachoThemes has transferred ownership to GreenTreeLabs on 26/09/2019 - 11:28 AM
* 
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License, version 3, as
* published by the Free Software Foundation.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*
*/

if ( function_exists( 'sab_fs' ) ) {
    sab_fs()->set_basename( false, __FILE__ );
} else {
    
    if ( !function_exists( 'sab_fs' ) ) {
        // Create a helper function for easy SDK access.
        function sab_fs()
        {
            global  $sab_fs ;
            
            if ( !isset( $sab_fs ) ) {
                // Activate multisite network integration.
                if ( !defined( 'WP_FS__PRODUCT_4707_MULTISITE' ) ) {
                    define( 'WP_FS__PRODUCT_4707_MULTISITE', true );
                }
                // Include Freemius SDK.
                require_once dirname( __FILE__ ) . '/freemius/start.php';
                $sab_fs = fs_dynamic_init( array(
                    'id'             => '4707',
                    'slug'           => 'simple-author-box',
                    'type'           => 'plugin',
                    'public_key'     => 'pk_be96dfb16a3f24a09657df8b35ff2',
                    'is_premium'     => false,
                    'premium_suffix' => 'Premium',
                    'has_addons'     => false,
                    'has_paid_plans' => true,
                    'trial'          => array(
                    'days'               => 7,
                    'is_require_payment' => true,
                ),
                    'menu'           => array(
                    'slug' => 'simple-author-box-options',
                ),
                    'is_live'        => true,
                ) );
            }
            
            return $sab_fs;
        }
        
        // Init Freemius.
        sab_fs();
        // Signal that SDK was initiated.
        do_action( 'sab_fs_loaded' );
        define( 'SIMPLE_AUTHOR_BOX_PATH', plugin_dir_path( __FILE__ ) );
        define( 'SIMPLE_AUTHOR_BOX_ASSETS', plugins_url( '/assets/', __FILE__ ) );
        define( 'SIMPLE_AUTHOR_BOX_SLUG', plugin_basename( __FILE__ ) );
        define( 'SIMPLE_AUTHOR_BOX_VERSION', '2.3.3' );
        define( 'SIMPLE_AUTHOR_SCRIPT_DEBUG', false );
        require_once SIMPLE_AUTHOR_BOX_PATH . 'inc/class-simple-author-box.php';
        Simple_Author_Box::get_instance();
        function sab_check_for_review()
        {
            if ( !is_admin() ) {
                return;
            }
            require_once SIMPLE_AUTHOR_BOX_PATH . 'inc/class-sab-review.php';
            SAB_Review::get_instance( array(
                'slug' => 'simple-author-box',
            ) );
        }
        
        sab_check_for_review();
    }

}
