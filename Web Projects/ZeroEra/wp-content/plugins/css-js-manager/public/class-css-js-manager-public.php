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
class Css_Js_Manager_Public {

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
	 * @param      string    $plugin_name       The name of the plugin.
	 * @param      string    $version    The version of this plugin.
	 */
	public function __construct( $plugin_name, $version ) {

		$this->plugin_name = $plugin_name;
		$this->version = $version;

		add_action("wp_head", array($this,'singular_css'));
		

		/**
		 * Get final html
		 */
		if(!is_admin()):
			add_action('wp_footer', array($this,'polifill'));
			add_action('after_setup_theme', array($this,'buffer_start'));
			add_action('shutdown', array($this,'buffer_end'));
		endif;
	}

	function singular_css(){
		$post_type_saved = get_option('ccm_post_types',false);
		if(is_singular($post_type_saved) ){
			global $post;

			$css_id = get_post_meta($post->ID, 'critical_css_apply',true);
			if($css_id != ""){
				$this->css = get_post_meta($css_id, 'critical_css',true);
				if($this->css !=""):
				echo '<style id="critical-css" type="text/css">';
				echo $this->css;
				echo '</style>';
				endif;
			}
		
		}
	}

	function html_filter($buffer){
		$rules_obj = new Rules_Decoder();
		
		if(!isset($rules_obj->resources['css'])){
			$rules_obj->resources['css'] = array();
		}

		if(!isset($rules_obj->resources['js'])){
			$rules_obj->resources['js'] = array();
		}

		global $wp;
		$url =  home_url( $wp->request );
		$is_sitemap = false;
		
		

		$pi_obj = new Css_Js_Manager_Filtering($buffer, $rules_obj->resources['css'], $rules_obj->resources['js']);
		
		$html = $pi_obj->html();
		
		
		return $html;
	}

	function buffer_start(){
		ob_start(array($this,"html_filter"));
	}

	function buffer_end(){
		if (ob_get_contents()) ob_end_flush();
	}

	function polifill() {
		?>
		<script type="text/javascript">
		
(function( w ){
	"use strict";
	// rel=preload support test
	if( !w.loadCSS ){
		w.loadCSS = function(){};
	}
	// define on the loadCSS obj
	var rp = loadCSS.relpreload = {};
	// rel=preload feature support test
	// runs once and returns a function for compat purposes
	rp.support = (function(){
		var ret;
		try {
			ret = w.document.createElement( "link" ).relList.supports( "preload" );
		} catch (e) {
			ret = false;
		}
		return function(){
			return ret;
		};
	})();

	// if preload isn't supported, get an asynchronous load by using a non-matching media attribute
	// then change that media back to its intended value on load
	rp.bindMediaToggle = function( link ){
		// remember existing media attr for ultimate state, or default to 'all'
		var finalMedia = link.media || "all";

		function enableStylesheet(){
			// unbind listeners
			if( link.addEventListener ){
				link.removeEventListener( "load", enableStylesheet );
			} else if( link.attachEvent ){
				link.detachEvent( "onload", enableStylesheet );
			}
			link.setAttribute( "onload", null ); 
			link.media = finalMedia;
		}

		// bind load handlers to enable media
		if( link.addEventListener ){
			link.addEventListener( "load", enableStylesheet );
		} else if( link.attachEvent ){
			link.attachEvent( "onload", enableStylesheet );
		}

		// Set rel and non-applicable media type to start an async request
		// note: timeout allows this to happen async to let rendering continue in IE
		setTimeout(function(){
			link.rel = "stylesheet";
			link.media = "only x";
		});
		// also enable media after 3 seconds,
		// which will catch very old browsers (android 2.x, old firefox) that don't support onload on link
		setTimeout( enableStylesheet, 3000 );
	};

	// loop through link elements in DOM
	rp.poly = function(){
		// double check this to prevent external calls from running
		if( rp.support() ){
			return;
		}
		var links = w.document.getElementsByTagName( "link" );
		for( var i = 0; i < links.length; i++ ){
			var link = links[ i ];
			// qualify links to those with rel=preload and as=style attrs
			if( link.rel === "preload" && link.getAttribute( "as" ) === "style" && !link.getAttribute( "data-loadcss" ) ){
				// prevent rerunning on link
				link.setAttribute( "data-loadcss", true );
				// bind listeners to toggle media back
				rp.bindMediaToggle( link );
			}
		}
	};

	// if unsupported, run the polyfill
	if( !rp.support() ){
		// run once at least
		rp.poly();

		// rerun poly on an interval until onload
		var run = w.setInterval( rp.poly, 500 );
		if( w.addEventListener ){
			w.addEventListener( "load", function(){
				rp.poly();
				w.clearInterval( run );
			} );
		} else if( w.attachEvent ){
			w.attachEvent( "onload", function(){
				rp.poly();
				w.clearInterval( run );
			} );
		}
	}


	// commonjs
	if( typeof exports !== "undefined" ){
		exports.loadCSS = loadCSS;
	}
	else {
		w.loadCSS = loadCSS;
	}
}( typeof global !== "undefined" ? global : this ) );
		</script>
		<?php
		}

}
