<?php

/**
 * The public-facing functionality of the plugin.
 *
 * @link       piwebsolution.com
 * @since      1.0.0
 *
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/public
 */

/**
 * The public-facing functionality of the plugin.
 *
 * Defines the plugin name, version, and two examples hooks for how to
 * enqueue the public-facing stylesheet and JavaScript.
 *
 * @package    Css_Js_Manager
 * @subpackage Css_Js_Manager/public
 * @author     piwebsolution <rajeshsingh520@gmail.com>
 */
class Rules_Decoder {
	public $resources = array();

	function __construct(){
		$this->resource_separator();
	}
	/**
	 * It get all active resources
	 */
	function get_all_resources(){
		global $wpdb;
		$table_name = $wpdb->prefix . 'css_js_manager';
		$result = $wpdb->get_results("SELECT * FROM ".$table_name." WHERE state = 1", ARRAY_A );
		return $result;
	}

	/**
	 * 
	 */
	function resource_separator(){
		$resources = $this->get_all_resources();
		foreach($resources as $resource){
			if($resource['type'] == "css"){
				$this->resources['css'][md5($this->remove_query_string($resource['url']))] = $this->evaluate_rules($resource); 
			}elseif($resource['type'] == "js"){
				$this->resources['js'][md5($this->remove_query_string($resource['url']))] = $this->evaluate_rules($resource); 
			}
		}
	}

	function evaluate_rules($resource){
		$return['url'] = $resource['url'];
		$return['method'] = $resource['method'];
		$return['remove'] = false;

		$rule_match = false;

		$form_rules = json_decode($resource['form']);
		if($form_rules != ""):
		foreach( $form_rules as $class => $functions ){
			if(class_exists('Rule_'.$class)){
				$class_name = 'Rule_'.$class;
				$obj = new $class_name();
				foreach($functions as $function => $value){
					if($obj->call($function, $value)){
						$rule_match = true;
					}
				}
			}
		}
		endif;

		$return['remove'] = $this->add_remove_rule($rule_match, $resource['add_remove'], $resource['apply_on'] );
		return $return;
	}

	/**
	 * Return TRUE means remove the resource
	 * FALSE means resource will remain
	 */
	function add_remove_rule($rule_match, $add_remove, $apply_on){
		if($add_remove == "remove" && $apply_on == "all"){
			return true;
		}

		if($add_remove == "add" && $apply_on == "all"){
			return false;
		}

		if($add_remove == "remove" && $rule_match == true){
			return true;
		}

		if($add_remove == "add" && $rule_match == false){
			return true;
		}

		return false;
	}

	private function remove_query_string($url){
        $return_url = explode( '?', $url ); 	
        return $return_url[0];
    }
}