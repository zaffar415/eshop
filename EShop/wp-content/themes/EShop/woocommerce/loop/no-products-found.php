<?php
/**
 * Displayed when no products are found matching the current query
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/no-products-found.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 2.0.0
 */

defined( 'ABSPATH' ) || exit;

?>
<section class="product-area shop-sidebar shop section">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-12">
                <div class="shop-sidebar">
                        <!-- Single Widget -->
                        <?php dynamic_sidebar('shop_sidebar'); ?>
                        
                        <!-- Single Widget -->
                        <!-- <div class="single-widget category">
                            <h3 class="title">Manufacturers</h3>
                            <ul class="categor-list">
                                <li><a href="#">Forever</a></li>
                                <li><a href="#">giordano</a></li>
                                <li><a href="#">abercrombie</a></li>
                                <li><a href="#">ecko united</a></li>
                                <li><a href="#">zara</a></li>
                            </ul>
                        </div> -->
                        <!--/ End Single Widget -->
                </div>
            </div>
            <div class="col-lg-9 col-md-8 col-12">
                <p class="woocommerce-info"><?php esc_html_e( 'No products were found matching your selection.', 'woocommerce' ); ?></p>
            </div>
        </div>
    </div>
</section>
