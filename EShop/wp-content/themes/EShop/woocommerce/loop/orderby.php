<?php
/**
 * Show options for ordering
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/orderby.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @package     WooCommerce\Templates
 * @version     3.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

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
				<div class="row">
					<div class="col-12">
						<!-- Shop Top -->
						<div class="shop-top">
							<div class="shop-shorter">
								<form method="get">
								<div class="single-shorter">
									<label>Show :</label>
									<select name="post_per_page" onchange="this.form.submit()">
										<option value="9" <?php echo $_REQUEST['post_per_page']=='9' ? 'selected=selected' : ''; ?>>09</option>
										<option value="15" <?php echo $_REQUEST['post_per_page']=='15' ? 'selected=selected' : ''; ?>>15</option>
										<option value="25" <?php echo $_REQUEST['post_per_page']=='25' ? 'selected=selected' : ''; ?>>25</option>
										<option value="30" <?php echo $_REQUEST['post_per_page']=='30' ? 'selected=selected' : ''; ?>>30</option>
									</select>
								</div>
								<div class="single-shorter">
										<label>Sort By :</label>
										<select onchange="this.form.submit()" name="orderby">
										<?php foreach ( $catalog_orderby_options as $id => $name ) : ?>
											<option value="<?php echo esc_attr( $id ); ?>" <?php selected( $orderby, $id ); ?>><?php echo esc_html( $name ); ?></option>
										<?php endforeach; ?>
										</select>
								</div>
								<input type="hidden" name="paged" value="1" />
								<?php wc_query_string_form_fields( null, array( 'orderby', 'submit', 'paged', 'product-page', 'post_per_page' ) ); ?>
								</form>
							</div>
							<ul class="view-mode">
								<li class="active"><a href="shop-grid.html"><i class="fa fa-th-large"></i></a></li>
								<li><a href="shop-list.html"><i class="fa fa-th-list"></i></a></li>
							</ul>
						</div>
						<!--/ End Shop Top -->
					</div>
				</div>
				<div class="text-right"><a href="<?php echo site_url(); ?>/?action=yith-woocompare-view-table" target="_blank">Compare List</a></div>
