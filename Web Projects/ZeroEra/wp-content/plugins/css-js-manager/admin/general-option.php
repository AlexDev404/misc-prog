<?php

class CCM_General_Option{

    public $plugin_name;

    private $setting = array();

    private $active_tab;

    private $this_tab = 'critical-css';

    private $tab_name = "Critical CSS setting";

    private $setting_key = 'ccm_general_option';

    

    function __construct(){
        $this->plugin_name = 'css-js-manager';
        
        $this->active_tab = (isset($_GET['tab'])) ? $_GET['tab'] : 'default';

        $post_type = get_post_types( array('public' => true), 'objects' );

        $this->settings = array(
                array('field'=>'ccm_post_types', 'value'=>$post_type),
                array('field'=>'ccm_load_css_async')
            );
        

        if($this->this_tab == $this->active_tab){
            add_action($this->plugin_name.'_tab_content', array($this,'tab_content'));
        }

        add_action($this->plugin_name.'_tab', array($this,'tab'),2);

        
        $this->register_settings();
    }


    function register_settings(){   

        foreach($this->settings as $setting){
                register_setting( $this->setting_key, $setting['field']);
        }
    
    }

    function tab(){
        ?>
        <a class=" px-3 text-light d-flex align-items-center  border-left border-right  <?php echo ($this->active_tab == $this->this_tab ? 'bg-primary' : 'bg-secondary'); ?>" href="<?php echo admin_url( 'admin.php?page='.sanitize_text_field($_GET['page']).'&tab='.$this->this_tab ); ?>">
            <?php _e( $this->tab_name, 'critical-css-manager' ); ?> 
        </a>
        <?php
    }

    function tab_content(){
        $post_type_saved = get_option('ccm_post_types',array());
        //print_r($post_type_saved);
       ?>
        <div class="p-3">
        <form method="post" action="options.php"  class="pisol-setting-form">
        <?php settings_fields( $this->setting_key ); ?>
        <h2>Select post type where you want to use Critical CSS</h2>
        <?php
            
                foreach($this->settings[0]['value'] as $post_type){
                    //print_r($post_type);
                ?>
                <div class="custom-control custom-checkbox">
                <input type="checkbox" name="<?php echo $this->settings[0]['field']; ?>[]" class="custom-control-input" id="<?php echo $post_type->name; ?>" value="<?php echo $post_type->name; ?>" 
                <?php echo (in_array($post_type->name, array_values($post_type_saved)) ? "checked": ""); ?>>
                <label class="custom-control-label" for="<?php echo $post_type->name; ?>"><?php echo $post_type->label; ?></label>
                </div>
                <?php
                }
        ?>
        
        <input type="submit" class="mt-3 btn btn-primary btn-sm" value="Save Option" />
        </form>
        </div>
       <?php
    }
}

//add_action($this->plugin_name.'_general_option', new CCM_General_Option($this->plugin_name));

/**
 * We are running this on init hook as get_post_types wont show custom post type 
 * if we fire it earlier then 999 in init hook
 */

add_action('init', array(new CCM_General_Option(), '__construct'), 999);