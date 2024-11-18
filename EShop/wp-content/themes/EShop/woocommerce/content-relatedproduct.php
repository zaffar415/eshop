<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

global $product;

// Ensure visibility.
if ( empty( $product ) || ! $product->is_visible() ) {
	return;
}
?>
<!-- <div class="col-4"> -->
	<?php
	
	echo '<div class="col-lg-3 col-md-6 col-12">
			<div class="single-product">
				<div class="product-img">
					<a href="'.get_permalink($id).'">
						<img class="default-img" src="'.get_the_post_thumbnail_url($id).'" alt="#" style="height:350px;">
						<img class="hover-img" src="'.get_the_post_thumbnail_url($id).'" alt="#" style="height:350px;">';
						if($product->is_on_sale()) : 
							echo '<span class="price-dec">sale</span>';
							endif;
					echo '</a>
					<div class="button-head">
						<div class="product-action">
							<a title="Quick View" href="'.site_url().'/index.php/quick-buy/'.$id.'"><i class=" ti-eye"></i><span>Quick Shop</span></a>
							
							
							'.do_shortcode('[yith_wcwl_add_to_wishlist product_id="'.$id.'"]').'
							<a title="compare" href="'.site_url().'/index.php/shop?action=yith-woocompare-add-product&amp;id='.$id.'" class="compare" data-product_id="81" rel="nofollow"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
							
						</div>
						<div class="product-action-2">
							<a title="Add to cart" href="'.do_shortcode('[add_to_cart_url id="'.$id.'"]').'">Add to cart</a>
						</div>
					</div>
				</div>
				<div class="product-content">
					<h3><a href="'.get_permalink($id).'">'.$product->get_title().'</a></h3>
					<div class="product-price">
						<span>₹'.$product->get_price().'</span>
					</div>
				</div>
			</div>
		</div>';  















	// /**
	//  * Hook: woocommerce_before_shop_loop_item.
	//  *
	//  * @hooked woocommerce_template_loop_product_link_open - 10
	//  */
	
	// do_action( 'woocommerce_before_shop_loop_item' );

	// /**
	//  * Hook: woocommerce_before_shop_loop_item_title.
	//  *
	//  * @hooked woocommerce_show_product_loop_sale_flash - 10
	//  * @hooked woocommerce_template_loop_product_thumbnail - 10
	//  */
	// do_action( 'woocommerce_before_shop_loop_item_title' );

	// /**
	//  * Hook: woocommerce_shop_loop_item_title.
	//  *
	//  * @hooked woocommerce_template_loop_product_title - 10
	//  */
	// do_action( 'woocommerce_shop_loop_item_title' );

	// /**
	//  * Hook: woocommerce_after_shop_loop_item_title.
	//  *
	//  * @hooked woocommerce_template_loop_rating - 5
	//  * @hooked woocommerce_template_loop_price - 10
	//  */
	// do_action( 'woocommerce_after_shop_loop_item_title' );

	// /**
	//  * Hook: woocommerce_after_shop_loop_item.
	//  *
	//  * @hooked woocommerce_template_loop_product_link_close - 5
	//  * @hooked woocommerce_template_loop_add_to_cart - 10
	//  */
	// do_action( 'woocommerce_after_shop_loop_item' );
	?>
<!-- </div> -->
