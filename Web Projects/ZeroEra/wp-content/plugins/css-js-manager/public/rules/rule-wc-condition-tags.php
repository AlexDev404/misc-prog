<?php

/**
 * Rule class format
 */
if(!class_exists("Rule_Wc_Condition_Tags")):

class Rule_Wc_Condition_Tags extends Super_Rule{
    public $rule_set = array();
    function __construct(){
        $this->rule_set();

        add_filter("css_js_manager_rules", array($this, "send_rule_set"));
    }

    function rule_set(){
        $this->rule_set = array(
                    "group_type"=>"checkbox",
                    "title"=>"WooCommerce Conditional tags",
                    "group_id"=>"Wc_Condition_Tags",
                    "checkbox_list"=> array(
					array(
						"label"=>"Is Product page",
						"desc"=>"if it is single product page",
						"name"=>"pro",
						"value"=>false,
					),
					array(
						"label"=>"Is WooCommerce page",
						"desc"=>"Returns true if on a page which uses WooCommerce templates (cart and checkout are standard pages with shortcodes and thus are not included).",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is Main shop page",
						"desc"=>"Returns true when on the product archive page (shop).",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is Product category page",
						"desc"=>"Returns true when viewing a product category archive.",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is Cart page",
						"desc"=>"Returns true on the cart page.",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is Checkout page",
						"desc"=>"Returns true on the checkout page.",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is Account page",
						"desc"=>"Returns true on the customer’s account pages.",
						"name"=>"pro",
						"value"=>false
					),
					array(
						"label"=>"Is WooCommerce Endpoint",
						"desc"=>"Returns true when viewing a WooCommerce endpoint",
						"name"=>"pro",
						"value"=>false
					),
                )
        );
    }

    function send_rule_set($array){
        $array[] = $this->rule_set;
        return $array;
	}

	function is_product($value){
		if(function_exists('is_product')){
			return is_product();
		}
		return false;
	}

	function is_woocommerce($value){
		if(function_exists('is_woocommerce')){
			return is_woocommerce();
		}
		return false;
	}

	function is_shop($value){
		if(function_exists('is_shop')){
			return is_shop();
		}
		return false;
	}

	function is_product_category($value){
		if(function_exists('is_product_category')){
			return is_product_category();
		}
		return false;
	}

	function is_cart($value){
		if(function_exists('is_cart')){
			return is_cart();
		}
		return false;
	}

	function is_checkout($value){
		if(function_exists('is_checkout')){
			return is_checkout();
		}
		return false;
	}

	function is_account_page($value){
		if(function_exists('is_account_page')){
			return is_account_page();
		}
		return false;
	}

	function is_wc_endpoint_url($value){
		if(function_exists('is_wc_endpoint_url')){
			return is_wc_endpoint_url();
		}
		return false;
	}

}

new Rule_Wc_Condition_Tags();

endif;