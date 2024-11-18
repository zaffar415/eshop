<?php

$query = new WC_Product_Query( $args );
$products = $query->get_products();
if ( $products ) {
    foreach ( $products as $product ) {
        $id=$product->get_id();
?>
    
    <div class="col-xl-3 col-lg-4 col-md-4 col-12">
        <div class="single-product">
            <div class="product-img">
                <a href="<?php echo get_permalink($id); ?>">
                    <img class="default-img" src="<?php echo get_the_post_thumbnail_url($id); ?>" alt="#">
                    <img class="hover-img" src="<?php echo get_the_post_thumbnail_url($id); ?>" alt="#">
                    
                    <?php if($product->is_on_sale()) : ?>
                        <span class="price-dec">sale</span>
                    <?php endif; ?>
                </a>
                <div class="button-head">
                    <div class="product-action">
                    <a title="Quick View" href="<?php echo site_url().'/index.php/quick-buy/'.$id; ?>"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                        <!-- <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a> -->
                        <?php echo do_shortcode('[yith_wcwl_add_to_wishlist product_id="'.$id.'"]'); ?>
                        <a title="compare" href="<?php echo site_url().'/?action=yith-woocompare-add-product&amp;id='.$id; ?>" class="compare" data-product_id="81" rel="nofollow"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                    </div>
                    <div class="product-action-2">
                        <a title="Add to cart" href="<?php echo do_shortcode('[add_to_cart_url id="'.$id.'"]'); ?>">Add to cart</a>
                    </div>
                </div>
            </div>
            <div class="product-content">
                <h3><a href="<?php echo get_permalink($id); ?>"><?php echo $product->get_name(); ?></a></h3>
                <div class="product-price">
                    <span>₹<?php echo $product->get_price(); ?></span>
                </div>
            </div>
        </div>
    </div>
    <?php
    }
} else {
echo __( 'No products found' );
}
wp_reset_query();