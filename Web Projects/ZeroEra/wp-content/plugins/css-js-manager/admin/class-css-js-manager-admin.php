<?php

/**
 * The admin-specific functionality of the plugin.
 *
 * @link       piwebsolution.com
 * @since      1.0.0
 *
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/admin
 */

/**
 * The admin-specific functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the admin-specific stylesheet and JavaScript.
 *
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/admin
 * @author     piwebsolution <rajeshsingh520@gmail.com>
 */
class Css_Js_Manager_Admin {

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

	public $all_rules;

	public $type = array('js','css');
	public $method = array('async','defer','normal');
	public $add_remove = array('add','remove');
	public $apply_on = array('all','selected');
	

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

		$this->register_menu();

		$this->all_rules = apply_filters("css_js_manager_rules", array());

		if(CSS_JS_MANAGER_DEVELOPMENT_MODE){
			add_action( 'wp_ajax_nopriv_add_resource', array($this,'add_resource') );
			add_action( 'wp_ajax_nopriv_delete_resource', array($this,'delete_resource') );
			add_action( 'wp_ajax_nopriv_edit_resource', array($this,'edit_resource') );
			add_action( 'wp_ajax_nopriv_toggle_state_resource', array($this,'toggle_state_resource') );
			add_action( 'wp_ajax_nopriv_get_resources', array($this,'get_resources') );
			add_action( 'wp_ajax_nopriv_get_resource', array($this,'get_resource') );
			add_action( 'wp_ajax_nopriv_blank_resource', array($this,'blank_resource') );
		}
		
		add_action( 'wp_ajax_add_resource', array($this,'add_resource') );

		
		add_action( 'wp_ajax_delete_resource', array($this,'delete_resource') );

		
		add_action( 'wp_ajax_edit_resource', array($this,'edit_resource') );

		
		add_action( 'wp_ajax_toggle_state_resource', array($this,'toggle_state_resource') );

		
		add_action( 'wp_ajax_get_resources', array($this,'get_resources') );

		
		add_action( 'wp_ajax_get_resource', array($this,'get_resource') );

		
		add_action( 'wp_ajax_blank_resource', array($this,'blank_resource') );
	}

	/**
	 * Register menu 
	 */
	
	public function register_menu(){
		new Css_Js_Manager_Menu($this->plugin_name, $this->version);
	}

	public function check_access(){
		if(CSS_JS_MANAGER_DEVELOPMENT_MODE) return true;
		
		if(current_user_can('administrator')){
			return true;
		}
		return false;
	}

	/**
	 * Add resource to table
	 */
	function add_resource(){
		
		if(!$this->check_access()) return;

		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		$data = array(
			"url"=> esc_url($_POST['url']),
			"type"=> in_array($_POST["type"],$this->type) ? sanitize_text_field($_POST["type"]) : "css",
			"method"=> in_array($_POST["method"],$this->method) ? sanitize_text_field($_POST["method"]) : "normal",
			"add_remove"=> in_array($_POST["add_remove"],$this->add_remove) ? sanitize_text_field($_POST["add_remove"]) : "add",
			"apply_on"=> in_array($_POST["apply_on"],$this->apply_on) ? sanitize_text_field($_POST["apply_on"]) : "all",
			"state"=>true,
			"form"=>wp_json_encode($_POST["form"])
		);
		$wpdb->insert($table_name,$data );
		die;
	}

	/**
	 * Delete resource to table
	 */
	function delete_resource(){
		if(!$this->check_access()) return;

		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		
		$wpdb->delete($table_name, array("id"=> esc_sql($_GET['id'])) );
		$this->get_resources();
		die;
	}

	/**
	 * Add resource to table
	 */
	function edit_resource(){
		if(!$this->check_access()) return;

		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		$data = array(
			"url"=> esc_url($_POST['url']),
			"type"=> in_array($_POST["type"],$this->type) ? sanitize_text_field($_POST["type"]) : "css",
			"method"=> in_array($_POST["method"],$this->method) ? sanitize_text_field($_POST["method"]) : "normal",
			"add_remove"=>in_array($_POST["add_remove"],$this->add_remove) ? sanitize_text_field($_POST["add_remove"]) : "add",
			"apply_on"=> in_array($_POST["apply_on"],$this->apply_on) ? sanitize_text_field($_POST["apply_on"]) : "all",
			"form"=>wp_json_encode($_POST["form"])
		);
		$wpdb->update($table_name, $data, array('id'=> esc_sql($_POST['id'])) );
		die;
	}

	function toggle_state_resource(){
		if(!$this->check_access()) return;

		global $wpdb;
		if(isset($_GET['id']) && is_numeric($_GET['id'])):
			$table_name = $wpdb->prefix . 'css_js_manager';
			$id = sanitize_text_field($_GET['id']);
			$state = ($_GET['state'] == 1) ? 0 : 1;
			$data = array(
				"state"=> $state,
			);
			$wpdb->update($table_name, $data, array('id'=>  $id));
		endif;
		$this->get_resources();
		die;
	}

	
	/**
	 * Get all resource
	 */
	function get_resources(){
		if(!$this->check_access()) return;

		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		$field_to_get = apply_filters("pi_enable_state","id, url");

		$result = $wpdb->get_results("SELECT ".$field_to_get." FROM ".$table_name, ARRAY_A );
		
		print_r(json_encode($result, JSON_NUMERIC_CHECK));
		die;
	}

	function get_resource(){
		if(!$this->check_access()) return;

		if(isset($_GET['id']) && is_numeric($_GET['id'])):
			$id = sanitize_text_field($_GET['id']);
			global $wpdb;
			$table_name = $wpdb->prefix . 'css_js_manager';
			$result = $wpdb->get_row("SELECT * FROM ".$table_name." WHERE id=".esc_sql($id), ARRAY_A );
			$result['form'] = $this->form_for_edit($result['form']);
			
			/*
			print_r($this->all_rules);
			echo '<br>';
			print_r(json_decode($result['form']));
			echo '<br>';
			$this->form_for_edit($result['form']);
			*/
			print_r(json_encode($result, JSON_NUMERIC_CHECK));
			
		endif;
		die;
	}

	/**
	 * We need to mix all form rules and saved value to generae form data for front end
	 */
	function form_for_edit($saved_rules){
		$all_rules = $this->all_rules;
		$saved_rules = json_decode($saved_rules);
		foreach($all_rules as $key1 => $group){
			if($group['group_type']=='checkbox'){
				$group_id = $group['group_id'];
				foreach($group['checkbox_list'] as $key2 => $checkbox){
					if(isset($saved_rules->{$group_id}->{$checkbox['name']})):
						$all_rules[$key1]['checkbox_list'][$key2]['value'] = $saved_rules->{$group_id}->{$checkbox['name']};
					endif;
				}
			}

			if($group['group_type']=='textbox'){
				$group_id = $group['group_id'];
				foreach($group['textbox_list'] as $key3 => $textbox){
					if(isset($saved_rules->{$group_id}->{$textbox['name']})):
						$all_rules[$key1]['textbox_list'][$key3]['value'] = $saved_rules->{$group_id}->{$textbox['name']};
					endif;
				}
			}
		}

		return ($all_rules);
	}


	/**
	 * Blank Resource data
	 */
	function blank_resource(){
		$blank = array(
			"url"=> "",
			"id"=> "",
			"type"=> "css",
			"method"=> "normal",
			"add_remove"=> "add",
			"apply_on"=> "all",
			"form"=>$this->all_rules
		);
		print_r(json_encode($blank));
		die;
	}
	/**
	 * Register the stylesheets for the admin area.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_styles() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Css_Js_Manager_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Css_Js_Manager_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */

		wp_enqueue_style( $this->plugin_name, plugin_dir_url( __FILE__ ) . 'css/css-js-manager-admin.css', array(), $this->version, 'all' );
		
	}

	/**
	 * Register the JavaScript for the admin area.
	 *
	 * @since    1.0.0
	 */
	public function enqueue_scripts() {

		/**
		 * This function is provided for demonstration purposes only.
		 *
		 * An instance of this class should be passed to the run() function
		 * defined in Css_Js_Manager_Loader as all of the hooks are defined
		 * in that particular class.
		 *
		 * The Css_Js_Manager_Loader will then create the relationship
		 * between the defined hooks and the functions defined in this
		 * class.
		 */

		wp_enqueue_script( $this->plugin_name, plugin_dir_url( __FILE__ ) . 'js/css-js-manager-admin.js', array( 'jquery' ), $this->version, false );

	}

}
