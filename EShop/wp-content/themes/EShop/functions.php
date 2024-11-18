<?php

add_theme_support("custom-logo");
add_theme_support("custom-header");
add_theme_support("title-tag");
add_theme_support("post-thumbnails");
add_theme_support('woocommerce');
register_nav_menus(
    array(
        "primary"=>"Primary Menu",
    )
);

if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(
        array(
            'page_title' 	=> 'Theme General Settings',
            'menu_title'	=> 'Theme Settings',
            'menu_slug' 	=> 'theme-general-settings',
            'capability'	=> 'edit_posts',
            'redirect'		=> false
        )
    );

    acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Footer Settings',
		'menu_title'	=> 'Footer',
		'parent_slug'	=> 'theme-general-settings',
	));
	
}



function add_styles()
{
    wp_enqueue_style("Font","https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap",array(),"1.0","all");

    wp_enqueue_style("bootstrap",get_template_directory_uri()."/assets/css/bootstrap.css",array(),"1.0","all");
    wp_enqueue_style("Magnific_Popup",get_template_directory_uri()."/assets/css/magnific-popup.min.css",array(),"1.0","all");
    wp_enqueue_style("Font_Awesome",get_template_directory_uri()."/assets/css/font-awesome.css",array(),"1.0","all");
    wp_enqueue_style("FancyBox",get_template_directory_uri()."/assets/css/jquery.fancybox.min.css",array(),"1.0","all");
    wp_enqueue_style("Themify_Icons",get_template_directory_uri()."/assets/css/themify-icons.css",array(),"1.0","all");
    wp_enqueue_style("Nice_select",get_template_directory_uri()."/assets/css/nice-select.css",array(),"1.0","all");
    wp_enqueue_style("Nice_Select_CSS",get_template_directory_uri()."/assets/css/niceselect.css",array(),"1.0","all");
    wp_enqueue_style("Animate_css",get_template_directory_uri()."/assets/css/animate.css",array(),"1.0","all");
    wp_enqueue_style("Flex_Slider_css",get_template_directory_uri()."/assets/css/flex-slider.min.css",array(),"1.0","all");
    wp_enqueue_style("Owl_Carousel",get_template_directory_uri()."/assets/css/owl_carousel.css",array(),"1.0","all");
    wp_enqueue_style("slicky_nav",get_template_directory_uri()."/assets/css/slicknav.min.css",array(),"1.0","all");
    wp_enqueue_style("jquery-ui",get_template_directory_uri()."/assets/css/jquery-ui.css",array(),"1.0","all");

    wp_enqueue_style("Eshop_stylesheet1",get_template_directory_uri()."/assets/css/reset.css",array(),"1.0","all");
    wp_enqueue_style("Eshop_stylesheet2",get_template_directory_uri()."/style.css",array(),"1.0","all");
    wp_enqueue_style("Eshop_stylesheet3",get_template_directory_uri()."/assets/css/responsive.css",array(),"1.0","all");
}

add_action("wp_enqueue_scripts","add_styles");

function add_scripts()
{
    wp_enqueue_script("Jquery",get_template_directory_uri()."/assets/js/jquery.min.js",array(),"1.0",true);
    wp_enqueue_script("Jquery_migrate",get_template_directory_uri()."/assets/js/jquery-migrate-3.0.0.js",array(),"1.0",true);
    wp_enqueue_script("Jquery-UI",get_template_directory_uri()."/assets/js/jquery-ui.min.js",array(),"1.0",true);
    wp_enqueue_script("Popper-Js",get_template_directory_uri()."/assets/js/popper.min.js",array(),"1.0",true);
    wp_enqueue_script("Bootstrap-Js",get_template_directory_uri()."/assets/js/bootstrap.min.js",array(),"1.0",true);
    wp_enqueue_script("Color-js",get_template_directory_uri()."/assets/js/colors.js",array(),"1,0",true);
    wp_enqueue_script("stickynav",get_template_directory_uri()."/assets/js/slicknav.min.js",array(),"1.0",true);
    wp_enqueue_script("Owl_Carousel-JS",get_template_directory_uri()."/assets/js/owl-carousel.js",array(),"1.0",true);
    wp_enqueue_script("Magnific_popup",get_template_directory_uri()."/assets/js/magnific-popup.js",array(),"1.0",true);
    wp_enqueue_script("Waypoint-Js",get_template_directory_uri()."/assets/js/waypoints.min.js",array(),"1.0",true);
    wp_enqueue_script("Countdown",get_template_directory_uri()."/assets/js/finalcountdown.min.js",array(),"1.0",true);
    wp_enqueue_script("Nice_Select",get_template_directory_uri()."/assets/js/nicesellect.js",array(),"1.0",true);
    wp_enqueue_script("Flex_slider",get_template_directory_uri()."/assets/js/flex-slider.js",array(),"1.0",true);
    wp_enqueue_script("Scroll-Up",get_template_directory_uri()."/assets/js/scrollup.js",array(),"1.0",true);
    wp_enqueue_script("OnePage_Nav",get_template_directory_uri()."/assets/js/onepage-nav.min.js",array(),"1.0",true);
    wp_enqueue_script("Easing",get_template_directory_uri()."/assets/js/easing.js",array(),"1.0",true);
    wp_enqueue_script("Active",get_template_directory_uri()."/assets/js/active.js",array(),"1.0",true);

    wp_enqueue_script("Custom-js",get_template_directory_uri()."/script.js",array(),"1.0",true);

}

add_action("wp_enqueue_scripts","add_scripts");


function add_widgets()
{
    register_sidebar(
        array(
            'name'          => 'Footer SideBar1',
            'id'            => 'sidebar-1',
            'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'textdomain' ),
            'before_widget' => '<div class="col-lg-2 col-md-6 col-12"><div class="single-footer links"><div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div></div></div>',
            'before_title'  => '<h4>',
            'after_title'   => '</h4>',
        )
    );

    // register_sidebar(
    //     array(
    //         'name'          => 'Footer SideBar2',
    //         'id'            => 'sidebar-2',
    //         'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'textdomain' ),
    //         'before_widget' => '<div class="col-lg-3 col-md-6 col-12"><div class="single-footer links"><div id="%1$s" class="widget %2$s">',
    //         'after_widget'  => '</div></div></div>',
    //         'before_title'  => '<h4>',
    //         'after_title'   => '</h4>',
    //     )
    // );

    register_sidebar(
        array(
            'name'          => 'Shop Sidebar',
            'id'            => 'shop_sidebar',
            'description'   => __( 'Widgets in this area will be shown on shop pages.', 'textdomain' ),
            'before_widget' => '<div id="%1$s" class="single-widget category">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="title">',
            'after_title'   => '</h3>',
        )
    );

    register_sidebar(
        array(
            'name'          => 'Blog_Single',
            'id'            => 'blog_single_sidebar',
            'description'   => __( 'Widgets in this area will be shown on Single Blog Page.', 'textdomain' ),
            'before_widget' => '<div id="%1$s" class="single-widget">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="title">',
            'after_title'   => '</h3>',
        )
    );

    register_sidebar(
        array(
            'name'          => 'Top',
            'id'            => 'top_sidebar1',
            'description'   => __( 'Widgets in this area will be shown on All.', 'textdomain' ),
            'before_widget' => '<div id="%1$s" class="search-bar-top">',
            'after_widget'  => '</div>',
        
        )
    );
}

add_action("widgets_init","add_widgets");


// add_action("woocommerce_before_shop_loop_item","tag_before_item",10);
// function tag_before_item() 
// {
//     echo "<div class='container'>";
//     echo "<div class='row'>";
//     $id=get_the_ID();
//     $product=wc_get_product($id);
//     echo '<div class="">
//     <div class="single-product">
//         <div class="product-img">
//             <a href="'.get_permalink($id).'">
//                 <img class="default-img" src="'.get_the_post_thumbnail_url($id).'" alt="#" style="height:350px;">
//                 <img class="hover-img" src="'.get_the_post_thumbnail_url($id).'" alt="#" style="height:350px;">
//             </a>
//             <div class="button-head">
//                 <div class="product-action">
//                     <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                    
//                     '.do_shortcode('[yith_wcwl_add_to_wishlist product_id="'.$id.'"]').'
//                     <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
//                 </div>
//                 <div class="product-action-2">
//                     <a title="Add to cart" href="'.do_shortcode('[add_to_cart_url id="'.$id.'"]').'">Add to cart</a>
//                 </div>
//             </div>
//         </div>
//         <div class="product-content">
//             <h3><a href="'.get_permalink($id).'">'.$product->get_title().'</a></h3>
//             <div class="product-price">
//                 <span>₹'.$product->get_price().'</span>
//             </div>
//         </div>
//     </div>
// </div>';
//     echo "<div style='display:none;'>";
// }

// add_action("woocommerce_before_shop_loop_item_title","tag_before_title",15);
// add_action("woocommerce_after_shop_loop_item","tag_after_title",15);
// function tag_before_title() {
//     // echo "</div>";
//     // echo "<div style='display:none;'>";
// }

// function tag_after_title()
// {
//     echo "</div>";
//     echo "</div>";
        
//     //echo '<a href="'.do_shortcode('[add_to_cart_url id="'.$id.'"]').'">Add</a>';
// }


function wpdocs_my_search_form( $form ) {
    $form = '<form role="search" method="get" id="searchform" class="searchform" action="' . home_url( '/' ) . '" >
    <div><label class="screen-reader-text" for="s">' . __( 'Search for:' ) . '</label>
    <input type="text" value="' . get_search_query() . '" name="s" id="s" class="custom-search-design"><button type="submit" id="searchsubmit" class="button btn p-3"><i class="fa fa-search"></i></button>
    </div>
    </form>';
 
    return $form;
}
add_filter( 'get_search_form', 'wpdocs_my_search_form' );

add_filter( 'get_product_search_form' , 'woo_custom_product_searchform' );

function woo_custom_product_searchform( $form ) {

    $form = '<form role="search" method="get" id="searchform" action="' . esc_url( home_url( '/'  ) ) . '">
		<div>
			<label class="screen-reader-text" for="s">' . __( 'Search for:', 'woocommerce' ) . '</label>
			<input type="text" value="' . get_search_query() . '" name="s" id="s" class="custom-search-design" placeholder="' . __( 'Search Products Here...', 'woocommerce' ) . '" /><button type="submit" id="searchsubmit" value="'. esc_attr__( 'Search', 'woocommerce' ) .'" class="button btn p-3"><i class="fa fa-search"></i></button>
			<input type="hidden" name="post_type" value="product" />
		</div>
	</form>';
    return $form;

}



add_filter( 'loop_shop_per_page', 'new_loop_shop_per_page', 20 );

function new_loop_shop_per_page( $cols ) {
  // $cols contains the current number of products per page based on the value stored on Options –> Reading
  // Return the number of products you wanna show per page.
  $cols = isset($_REQUEST['post_per_page']) ? $_REQUEST['post_per_page'] : 9 ;
  return $cols;
}

add_filter( 'woocommerce_checkout_fields', 'reOrder' );
 
function reOrder( $checkout_fields ) {
    $checkout_fields['billing']['billing_first_name']['priority'] = 10;
    $checkout_fields['billing']['billing_first_name']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_last_name']['priority'] = 20;
    $checkout_fields['billing']['billing_last_name']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_email']['priority'] = 30;
    $checkout_fields['billing']['billing_email']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_phone']['priority'] = 40;
    $checkout_fields['billing']['billing_phone']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_country']['priority'] = 70;
    $checkout_fields['billing']['billing_country']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_city']['priority'] = 90;
    $checkout_fields['billing']['billing_city']['class'] = array('col-lg-6 col-12');
    
    $checkout_fields['billing']['billing_state']['priority'] = 50;
    $checkout_fields['billing']['billing_state']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_address_1']['priority'] = 60;
    $checkout_fields['billing']['billing_address_1']['class'] = array('form-row-first col-lg-6 col-12');
    $checkout_fields['billing']['billing_address_2']['priority'] = 80;
    $checkout_fields['billing']['billing_address_2']['label'] = 'Address 2';
    $checkout_fields['billing']['billing_address_2']['class'] = array('form-row-last col-lg-6 col-12');
    $checkout_fields['billing']['billing_postcode']['priority'] = 100;
    $checkout_fields['billing']['billing_postcode']['class'] = array('col-lg-6 col-12');
    $checkout_fields['billing']['billing_company']['priority'] = 110;
	return $checkout_fields;
}



// add_filter('woocommerce_checkout_fields', 'addBootstrapToCheckoutFields' );
// function addBootstrapToCheckoutFields($fields) {
//     foreach ($fields as &$fieldset) {
//         foreach ($fieldset as &$field) {
//             // if you want to add the form-group class around the label and the input
//             $field['class'][] = 'w-50'; 

//             // add form-control to the actual input
//             $field['input_class'][] = 'form-control';
//         }
//     }
//     return $fields;
// }

