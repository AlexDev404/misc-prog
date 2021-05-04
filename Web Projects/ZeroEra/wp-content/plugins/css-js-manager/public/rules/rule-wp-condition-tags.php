<?php

/**
 * Rule class format
 */
if(!class_exists("Rule_Wp_Condition_Tags")):

class Rule_Wp_Condition_Tags extends Super_Rule{
    public $rule_set = array();
    function __construct(){
        $this->rule_set();

        add_filter("css_js_manager_rules", array($this, "send_rule_set"));
    }

    function rule_set(){
        $this->rule_set = array(
                    "group_type"=>"checkbox",
                    "title"=>"Wordpress Page Types",
                    "group_id"=>"Wp_Condition_Tags",
                    "checkbox_list"=> array(
					array(
						"label"=>"Is Front Page",
						"desc"=>"Determines whether the query is for the front page of the site.",
						"name"=>"is_front_page",
						"value"=>false
					),
					array(
						"label"=>"Is Home Page",
						"name"=>"is_home",
						"value"=>false,
						"desc"=>"Determines whether the query is for the blog homepage."
					),
					array(
						"label"=>"Is Page",
						"name"=>"is_page",
						"value"=>false,
						"desc"=>"Determines whether the query is for an existing single page."
					),
					array(
						"label"=>"Is Page (Not front page)",
						"name"=>"is_page_not_front",
						"value"=>false,
						"desc"=>"Determines whether the query is for an page. but not the front page"
					),
					array(
						"label"=>"Is RTL",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"Returns true if the current locale est read from right to left (RTL)."
					),
					array(
						"label"=>"Is Admin",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When the Dashboard or the administration panels are being displayed."
					),
					array(
						"label"=>"Is Sticky",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"Returns true if: Stick this post to the front page check box has been checked for the current post."
					),
					array(
						"label"=>"Is Tag",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When any Tag archive page is being displayed."
					),
					array(
						"label"=>"Is Author",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When any Author page is being displayed."
					),
					array(
						"label"=>"Is Search page",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When a search result page archive is being displayed."
					),
					array(
						"label"=>"Is 404 page",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When a page displays after an HTTP 404: Not Found error occurs."
					),
					array(
						"label"=>"Is Attachment",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"When an attachment document to a post or Page is being displayed."
					),
					array(
						"label"=>"Is Singular",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"Returns true for any is_single(), is_page(), or is_attachment()"
					),
					array(
						"label"=>"Is Single",
						"name"=>"pro",
						"value"=>false,
						"desc"=>"Determines whether the query is for an existing single post."
					)
                )
        );
    }

    function send_rule_set($array){
        $array[] = $this->rule_set;
        return $array;
	}
	
	function is_front_page($value){
		return is_front_page();
	}

	function is_home($value){
		return is_home();
	}

	function is_page($value){
		return is_page();
	}

	function is_page_not_front($value){
		if(is_page() && !is_front_page()){
			return true;
		}
		return false;
	}

	function is_admin($value){
		return is_admin();
	}

}

new Rule_Wp_Condition_Tags();

endif;