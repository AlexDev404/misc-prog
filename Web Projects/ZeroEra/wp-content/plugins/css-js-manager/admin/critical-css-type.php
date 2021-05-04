<?php

/**
 * The admin-specific functionality of the plugin.
 *
 * @link       piwebsolution.com
 * @since      1.0.0
 *
 * @package    Critical_Css_Manager
 * @subpackage Critical_Css_Manager/admin
 */

/**
 * The admin-specific functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Critical_Css_Manager
 * @subpackage Critical_Css_Manager/admin
 * @author     PI Websolution <sales@piwebsolution.com>
 */
class Critical_Css_Type {

	/**
	 * The ID of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $plugin_name    The ID of this plugin.
	 */
	private $plugin_name;

	/**
	 * The version of this plugin.
	 *
	 * @since    1.0.0
	 * @access   private
	 * @var      string    $version    The current version of this plugin.
	 */
	private $version;

	/**
	 * Initialize the class and set its properties.
	 *
	 * @since    1.0.0
	 * @param      string    $plugin_name       The name of this plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $plugin_name, $version ) {

		$this->plugin_name = $plugin_name;
		$this->version = $version;

        add_action( 'init', array($this, 'create_css_type') );
        add_action( 'add_meta_boxes', array($this,'metabox_critical_css') );
        add_action( 'add_meta_boxes', array($this,'metabox_select_critical_css') );
        add_action( 'save_post', array($this,'save_meta_box_data') );
        add_action( 'save_post', array($this,'save_meta_box_css_value') );
	}

	function create_css_type() {
        register_post_type( 'pi_critical_css',
          array(
            'labels' => array(
              'name' => __( 'Critical CSS' ),
              'singular_name' => __( 'Critical CSS' ),
              'add_new_item' => __('Add New Critical CSS')
            ),
            'public' => false,
            'exclude_from_search' => true,
            'publicaly_queryable' => true,
            'show_ui'=>true,
            'rewrite'=>false,
            'show_in_nav_menus' => false,
            'query_var' => false,
            'has_archive' => false,
            'supports'=>array('title'),
            'menu_position'	=>	8,
          )
        );
    }

    function metabox_critical_css(){
        add_meta_box(
            'critical-css',
            __( 'Critical CSS', 'critical-css-manager' ),
            array($this,'metabox_form'),
            'pi_critical_css',
            'advanced'
        );
    }

    function metabox_select_critical_css(){
        $post_type_saved = get_option('ccm_post_types',false);
        add_meta_box(
            'select-critical-css',
            __( 'Select Critical CSS', 'critical-css-manager' ),
            array($this,'metabox_select_form'),
            $post_type_saved,
            'advanced',
            'high'
        );
    }

    function metabox_select_form($post, $callback_args ){
        wp_nonce_field( 'global_adding_css_nonce', 'global_adding_css_nonce' );
        $critical_css_saved = get_post_meta($post->ID, 'critical_css_apply',true );
        $the_query = new WP_Query( array( 
            'post_type' => 'pi_critical_css',
            'posts_per_page' => -1,
            'post_status' => 'publish'
              ) );

        $css = array();
        if ( $the_query->have_posts() ) {
            while ( $the_query->have_posts() ) {
                $the_query->the_post();
                $css[] = array('label'=>get_the_title(), 'value'=> $the_query->post->ID);
            }
            
            wp_reset_postdata();
        }
        
        if(!empty($css)){
            echo '<select name="critical_css_apply">';
            echo '<option>Select Critical CSS</option>';
            foreach($css as $single_css){
                echo '<option value="'.$single_css['value'].'" '.($critical_css_saved == $single_css['value'] ? 'selected="selected"': '').'>'.$single_css['label'].'</option>';
            }
            echo '</select>';
        }else{
            echo '<strong>You have not added any critical CSS yet</strong>';
        }
        
    }

    function metabox_form($post, $callback_args ){
        wp_nonce_field( 'global_css_nonce', 'global_css_nonce' );
        $css = get_post_meta($post->ID,'critical_css', true);
        //$global_css = get_post_meta($post->ID,'global_critical', true);
        ?>
        <!--
        <label for="global">Make This CSS Global</label> &nbsp;<input id="global" type="checkbox" name="global_critical" value="1" <?php echo $global_css == 1 ? "checked='checked'" : ""; ?>/>
        <hr>-->
        <label>Add Critical CSS</label>
        <textarea style="width:100%; min-height:400px;" required id="critical_css" name="critical_css"><?php  echo esc_html( $css ); ?></textarea>
        <?php
    }

    function save_meta_box_css_value( $post_id ) {
        // Check if our nonce is set.
        if ( ! isset( $_POST['global_adding_css_nonce'] ) ) {
            return;
        }

        // Verify that the nonce is valid.
        if ( ! wp_verify_nonce( $_POST['global_adding_css_nonce'], 'global_adding_css_nonce' ) ) {
            return;
        }

        // If this is an autosave, our form has not been submitted, so we don't want to do anything.
        if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
            return;
        }


        // Make sure that it is set.
        if ( ! isset( $_POST['critical_css_apply'] )) {
            return;
        }

        // Sanitize user input.
        $css = sanitize_text_field( $_POST['critical_css_apply'] );
        
       
       

        // Update the meta field in the database.
        update_post_meta( $post_id, 'critical_css_apply', $css );
        

    }

    function save_meta_box_data( $post_id ) {
        // Check if our nonce is set.
        if ( ! isset( $_POST['global_css_nonce'] ) ) {
            return;
        }

        // Verify that the nonce is valid.
        if ( ! wp_verify_nonce( $_POST['global_css_nonce'], 'global_css_nonce' ) ) {
            return;
        }

        // If this is an autosave, our form has not been submitted, so we don't want to do anything.
        if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) {
            return;
        }

        // Check the user's permissions.
        if ( isset( $_POST['post_type'] ) && 'pi_critical_css' == $_POST['post_type'] ) {

            if ( ! current_user_can( 'edit_page', $post_id ) ) {
                return;
            }

        }
        else {

            if ( ! current_user_can( 'edit_post', $post_id ) ) {
                return;
            }
        }

        // Make sure that it is set.
        if ( ! isset( $_POST['critical_css'] )) {
            return;
        }

        // Sanitize user input.
        $race_date = sanitize_text_field( $_POST['critical_css'] );
        //$global = sanitize_text_field( $_POST['global_critical'] );
       

        // Update the meta field in the database.
        update_post_meta( $post_id, 'critical_css', $race_date );
        //update_post_meta( $post_id, 'global_critical', $global );
    }
}
