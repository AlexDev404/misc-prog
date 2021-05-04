<?php



/*--- Banner background function for image, color, gradient ---*/

function webhost_banner_background() {
	
	$title = get_theme_mod('banner_sub_title', __('Simple, Powerfull and Reliable', 'webhost'));
	//$fornt_img = get_theme_mod('banner_side_img',get_stylesheet_directory_uri() . '/images/banner-img-01.png');
	$subtitle = get_theme_mod('banner_main_title', __('Cloud Hosting', 'webhost'));
	$subpera = get_theme_mod('banner_para', __('Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusm tempor', 'webhost'));
	$button_text1 = get_theme_mod('banner_btn1_txt', __('Ready to start', 'webhost'));
	$button_text2 = get_theme_mod('banner_btn2_txt', __('Know more', 'webhost'));
	$button_url1 = get_theme_mod('banner_btn1_url', '#');
	$button_url2 = get_theme_mod('banner_btn2_url', '#');
	$site_header_type = get_theme_mod('site_header_type', 'image');
	
	?>
	
	<div class="header-background background-type-image">
		<div class="header-content">
			<div class="container">
				<div class="row align-center">
				
					<div class="banner-text-content" >
						<h1 class="bg-subtitle"><?php echo esc_html( $subtitle ); ?></h1>
						<h5 class="bg-maintitle"><?php echo esc_html( $title ); ?></h5>
						
						<p class="bg-subpera"><?php echo esc_html( $subpera ); ?></p>
						<?php if(!empty($button_text1)){ ?>
						<div class="banner-btn-div">
							<a href="<?php echo esc_url( $button_url1 ); ?>" class="bg-banner-button banner-button mt-5"><?php echo esc_html( $button_text1 ); ?></a>&nbsp;&nbsp;
						<?php }?>
						<?php if(!empty($button_text2)){ ?>
						<a href="<?php echo esc_url( $button_url2 ); ?>" class="bg-banner-button2 banner-button mt-5"><?php echo esc_html( $button_text2 ); ?></a>
						</div>
						<?php }?>
					</div>
					
				</div>	
			</div>	
		</div>
	</div> 
	
	<?php
}


/*--- Banner background function for video ---*/

function webhost_banner_video() {

	if ( !function_exists('the_custom_header_markup') ) {
		return;
	}

	$banner_type 	= get_theme_mod( 'banner_type' );

	if ( get_theme_mod('banner_type') == 'video' && is_front_page() ) {
		the_custom_header_markup();
	}
}