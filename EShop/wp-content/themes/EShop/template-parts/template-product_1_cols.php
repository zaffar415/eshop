<?php

$query = new WC_Product_Query( $args );
$products = $query->get_products();
if ( $products ) {
foreach ( $products as $product ) {
    $id=$product->get_id();
?>
<div class="single-list">
<div class="row">
<div class="col-lg-6 col-md-6 col-12">
    <div class="list-image overlay">
        <img src="<?php echo get_the_post_thumbnail_url($id); ?>" alt="#" style="height:150px;">
        
        <a href="<?php echo get_permalink($id); ?>" class="buy"><i class="fa fa-shopping-bag"></i></a>
    </div>
</div>
<div class="col-lg-6 col-md-6 col-12 no-padding">
    <div class="content">
        <h4 class="title"><a href="<?php echo get_permalink($id) ?>"><?php echo $product->get_name(); ?></a></h4>
        <p class="price with-discount">₹<?php echo $product->get_price(); ?></p>
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