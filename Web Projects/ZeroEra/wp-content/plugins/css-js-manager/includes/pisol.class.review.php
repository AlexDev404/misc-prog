<?php
/**
* version 1.1
* work with bootstrap
*/
defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

if(!class_exists('pisol_class_review')):
class pisol_class_review{

    function __construct($name, $slug, $buy_now, $price=""){
        $this->name = $name;
        $this->slug = $slug;
        $this->review_url = "https://wordpress.org/support/plugin/$slug/reviews/#new-post";
        $this->buy_now = $buy_now;
        $this->price = $price;
        $this->nonce = 'pi_theme_nonce';
        add_action( 'admin_init', array( $this, 'hide_review_notice' ) );
        add_action( 'admin_notices', array( $this, 'review_notice' ) );
        
    }

    function showNotification(){
        //delete_transient($this->slug.'_show_notification');
        //delete_option($this->slug.'_first_run');

        $this->show_notification = get_transient($this->slug.'_show_notification');

        $this->first_run = get_option($this->slug.'_first_run',"");

        if($this->first_run == ""){
            /* this make sure we run review msg after 1 day (86400 sec) after installation date */
            set_transient( $this->slug.'_show_notification', 'no',86400);
            update_option($this->slug.'_first_run',"complete");
            return false;
        }
        
        
        if($this->show_notification == 'no'){
            return false;
        }

        return true;
    }

    function thisFirstRun(){
        $this->first_run = get_option($this->slug.'_show_notification',"");
        if($this->first_run == ""){
            return true;
        }
        return false;
    }

    function review_notice(){
        if(!$this->showNotification()) return;
        ?>
        <div class="notice notice-warning is-dismissible">
            <p>You have been using our plugin <strong><?php echo $this->name; ?></strong> for the last few days, please provide a 5 Star rating to help the plugin grow 
            </p>
            <p>
            <a href="<?php echo $this->review_url; ?>" target="_blank" class="button">Review Now!!</a>&nbsp;
            <!--<a href="<?php echo $this->buy_now; ?>"  target="_blank" class="button">Buy PRO Version <?php echo $this->price; ?></a>&nbsp;-->
            <a href="<?php echo $this->reviewAfterwords(); ?>" class="button">Will Review Later</a>&nbsp;
            <a href="<?php echo $this->reviewAfterwords(); ?>" class="button">Have Already Reviewed</a>
            <a href="<?php echo $this->reviewAfterwords(); ?>" class="button">Don't show again</a>
            </p>
        </div>
        <?php
    }

    public function hide_review_notice() {
        if ( ! current_user_can( 'manage_options' ) ) {
            return;
        }

        if ( ! isset( $_GET[$this->nonce] ) ) {
            return;
        }

        if ( wp_verify_nonce( $_GET[$this->nonce], $this->slug . '_hide_notices' ) ) {
            /* This hide the msg for 70 days */
            set_transient( $this->slug.'_show_notification', 'no',6048000);
        }
    }

    function reviewAfterwords(){
       return esc_url( wp_nonce_url( @add_query_arg(), $this->slug. '_hide_notices', $this->nonce));
    }
}

new pisol_class_review('CSS JS Manager', 'css-js-manager',CSS_JS_MANAGER_BUY_URL, CSS_JS_MANAGER_PRICE);
endif;


