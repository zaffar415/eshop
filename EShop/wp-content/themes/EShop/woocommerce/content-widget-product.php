<?php
/**
 * The template for displaying product widget entries.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-widget-product.php.
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.5.5
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

global $product;

if ( ! is_a( $product, 'WC_Product' ) ) {
	return;
}

?>
<li>
	<?php do_action( 'woocommerce_widget_product_item_start', $args ); ?>
    <div class="single-post first">
        <div class="image">
            <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="#">
        </div>
        <div class="content">
            <h5><a href="<?php echo get_permalink(); ?>"><?php echo $product->get_name(); ?></a></h5>
            <p class="price"><?php echo $product->get_price(); ?></p>
            <ul class="reviews">
                
                <li class="<?php echo $product->get_average_rating()>=1?'yellow':''; ?>"><i class="ti-star"></i></li>
                <li class="<?php echo $product->get_average_rating()>=2?'yellow':''; ?>"><i class="ti-star"></i></li>
                <li class="<?php echo $product->get_average_rating()>=3?'yellow':''; ?>"><i class="ti-star"></i></li>
                <li class="<?php echo $product->get_average_rating()>=4?'yellow':''; ?>"><i class="ti-star"></i></li>
                <li class="<?php echo $product->get_average_rating()>=5?'yellow':''; ?>"><i class="ti-star"></i></li>
            </ul>
        </div>
    </div>


	<?php //if ( ! empty( $show_rating ) ) : ?>
		<?php //echo wc_get_rating_html( $product->get_average_rating() ); // PHPCS:Ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
	<?php //endif; ?>

	<?php //echo $product->get_price_html(); // PHPCS:Ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>

	<?php do_action( 'woocommerce_widget_product_item_end', $args ); ?>
</li>
