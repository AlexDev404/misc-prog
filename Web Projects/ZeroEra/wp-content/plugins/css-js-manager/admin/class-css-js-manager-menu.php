<?php

class Css_Js_Manager_Menu{

    public $plugin_name;

    public $menu;

    public $version;
    
    function __construct($plugin_name, $version){
        $this->plugin_name = $plugin_name;
        $this->version = $version;
        add_action( 'admin_menu', array($this,'plugin_menu') );
        add_action($this->plugin_name.'_promotion', array($this,'promotion'));
    }

    function plugin_menu(){
        
       $this->menu =  add_menu_page(
            __( 'CSS JS Manager', 'css-js-manager' ),
            'CSS JS Manager',
            'manage_options',
            $this->plugin_name,
            array($this, 'menu_option_page'),
            'dashicons-randomize',
            7
        );
        
        add_action( 'load-' . $this->menu, array($this,'enqueue_styles') );
        add_action( 'load-' . $this->menu, array($this,'enqueue_scripts') );
    }

    function menu_option_page(){
        ?>
        <div class="container-fluid mt-2">
            <div class="row">
                    <div class="col-12">
                        <div class='bg-dark'>
                        <div class="row">
                            <div class="col-12 col-sm-2 py-2">
                                    <a href="https://www.piwebsolution.com/" target="_blank"><img class="img-fluid ml-2" src="<?php echo plugin_dir_url( __FILE__ ); ?>img/pi-web-solution.svg"></a>
                            </div>
                            <div class="col-12 col-sm-10 d-flex text-center small">
                                <?php do_action($this->plugin_name.'_tab'); ?>
                                <div class="align-items-center justify-content-end d-flex ml-auto mr-0" >
                                <a class="btn btn-danger btn-sm mx-2 text-light" href="<?php echo CSS_JS_MANAGER_BUY_URL; ?>" trget="_blank">
                        BUY PRO FOR <?php echo CSS_JS_MANAGER_PRICE; ?>
                        </a>
                                <a class="btn btn-warning btn-sm  mx-2 text-light" href="https://www.piwebsolution.com/css-js-manager-documentation/" trget="_blank">
                        Documentation
                        </a>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
            </div>
            <div class="row">
                <div class="col-12 ">
                <div class="bg-light border p-1">
                    <div class="row">
                        <div class="col-12 order-3">
                        <?php do_action($this->plugin_name.'_tab_content'); ?>
                        </div>
                        <?php do_action($this->plugin_name.'_promotion'); ?>
                    </div>
                </div>
                </div>
            </div>
        </div>
        <?php
    }

    function promotion(){
        ?>
        <?php if(  !is_plugin_active( 'css-js-manager-pro/css-js-manager-pro.php' ) ) : ?>
        <div class="col-12 col-sm-6 pt-3 order-1 mb-3">
           <div class="bg-dark p-3 text-light text-center" style="height:100%;">
                <h2 class="text-light font-weight-light "><span>Get Pro<br> <h2 class="text-light my-2"><?php echo CSS_JS_MANAGER_PRICE; ?></h2>Buy Now !!</span></h2>
                <strong>Pro version support WooCommerce page rules</strong>
                <div class="inside">
                    <p>PRO version offer more page specific rules</p>
                    <a class="btn btn-light" href="<?php echo CSS_JS_MANAGER_BUY_URL; ?>" target="_blank">Click to Buy Now</a>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 pt-3 order-2 mb-3">
        <a href="<?php echo CSS_JS_MANAGER_BUY_URL; ?>" target="_blank">
        <?php  new pisol_promotion("pi_css_js_manager_installation_date"); ?>
        </a>
        </div>
        <?php endif; ?>
        <?php
    }

    function enqueue_styles(){
		wp_enqueue_style( $this->plugin_name."_bootstrap", plugin_dir_url( __FILE__ ) . 'css/bootstrap.css', array(), $this->version, 'all' );
		wp_enqueue_style( $this->plugin_name."_react_css1", plugin_dir_url( __FILE__ ) . 'build/static/css/1.0cfe90b1.chunk.css', array(), $this->version, 'all' );
		wp_enqueue_style( $this->plugin_name."_react_css2", plugin_dir_url( __FILE__ ) . 'build/static/css/main.16b2526d.chunk.css', array(), $this->version, 'all' );
    }

    public function enqueue_scripts() {
        wp_enqueue_script( $this->plugin_name."_react_js1", plugin_dir_url( __FILE__ ) . 'build/static/js/1.e147a57c.chunk.js', array( ), $this->version, true );
        wp_enqueue_script( $this->plugin_name."_react_js2", plugin_dir_url( __FILE__ ) . 'build/static/js/main.d4066b77.chunk.js', array( ), $this->version, true );
	  }
 
}