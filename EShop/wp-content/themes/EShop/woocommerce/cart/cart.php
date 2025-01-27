<?php
/**
 * Cart Page
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.8.0
 */

defined( 'ABSPATH' ) || exit;
?>
<?php do_action( 'woocommerce_before_cart' ); ?>

<div class="shopping-cart section">
	<div class="container">
	<form class="woocommerce-cart-form" action="<?php echo esc_url( wc_get_cart_url() ); ?>" method="post">
		<?php do_action( 'woocommerce_before_cart_table' ); ?>
			<div class="row">
				<div class="col-12">
					<!-- Shopping Summery -->
					<table class="shop_table shop_table_responsive cart woocommerce-cart-form__contents table shopping-summery" cellspacing="0">
						<thead>
							<tr class="main-hading">
								<!-- <th class="product-remove">&nbsp;</th>
								<th class="product-thumbnail">&nbsp;</th> -->
								<th class="product-thumbnail text-center"><?php esc_html_e( 'PRODUCT', 'woocommerce' ); ?></th>
								<th class="product-name text-center"><?php esc_html_e( 'NAME', 'woocommerce' ); ?></th>
								<th class="product-price text-center" width=10%><?php esc_html_e( 'UNIT PRICE', 'woocommerce' ); ?></th>
								<th class="product-quantity text-center"><?php esc_html_e( 'QUANTITY', 'woocommerce' ); ?></th>
								<th class="product-subtotal text-center"><?php esc_html_e( 'TOTAL', 'woocommerce' ); ?></th>
								<th class="product-remove text-center"><i class="ti-trash remove-icon"></i></th>
								
							</tr>
						</thead>
						<tbody>
							<?php do_action( 'woocommerce_before_cart_contents' ); ?>

							<?php
							foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
								$_product   = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
								$product_id = apply_filters( 'woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key );

								if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
									$product_permalink = apply_filters( 'woocommerce_cart_item_permalink', $_product->is_visible() ? $_product->get_permalink( $cart_item ) : '', $cart_item, $cart_item_key );
									?>
									<tr class="woocommerce-cart-form__cart-item <?php echo esc_attr( apply_filters( 'woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key ) ); ?>">
										
										<td class="product-thumbnail image" data-title="No">
										<?php
										$thumbnail = apply_filters( 'woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key );

										if ( ! $product_permalink ) {
											echo $thumbnail; // PHPCS: XSS ok.
										} else {
											printf( '<a href="%s">%s</a>', esc_url( $product_permalink ), $thumbnail ); // PHPCS: XSS ok.
										}
										?>
										</td>

										<td class="product-name product-des" data-title="<?php esc_attr_e( 'Product', 'woocommerce' ); ?>">
										<?php
										if ( ! $product_permalink ) {
											echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', $_product->get_name(), $cart_item, $cart_item_key ) . '&nbsp;' );
										} else {
											echo wp_kses_post( apply_filters( 'woocommerce_cart_item_name', sprintf( '<p class="product-name"><a href="%s">%s</a></p><p class="product-des">%s</p>', esc_url( $product_permalink ), $_product->get_name(), $_product->get_short_description() ), $cart_item, $cart_item_key ) );
										}

										do_action( 'woocommerce_after_cart_item_name', $cart_item, $cart_item_key );

										// Meta data.
										echo wc_get_formatted_cart_item_data( $cart_item ); // PHPCS: XSS ok.

										// Backorder notification.
										if ( $_product->backorders_require_notification() && $_product->is_on_backorder( $cart_item['quantity'] ) ) {
											echo wp_kses_post( apply_filters( 'woocommerce_cart_item_backorder_notification', '<p class="backorder_notification">' . esc_html__( 'Available on backorder', 'woocommerce' ) . '</p>', $product_id ) );
										}
										?>
										</td>
										
										<td class="product-price price" data-title="<?php esc_attr_e( 'Price', 'woocommerce' ); ?>">
											<?php
												echo apply_filters( 'woocommerce_cart_item_price', WC()->cart->get_product_price( $_product ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
											?>
										</td>
										
										<td class="product-quantity qty text-center" data-title="<?php esc_attr_e( 'Quantity', 'woocommerce' ); ?>">
										<?php
										if ( $_product->is_sold_individually() ) {
											$product_quantity = sprintf( '1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key );
										} else {
											$product_quantity = woocommerce_quantity_input(
												array(
													'input_name'   => "cart[{$cart_item_key}][qty]",
													'input_value'  => $cart_item['quantity'],
													'max_value'    => $_product->get_max_purchase_quantity(),
													'min_value'    => '0',
													'product_name' => $_product->get_name(),
												),
												$_product,
												false
											);
										}

										echo apply_filters( 'woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item ); // PHPCS: XSS ok.
										?>
										</td>

										<td class="product-subtotal total-amount" data-title="<?php esc_attr_e( 'Subtotal', 'woocommerce' ); ?>">
											<?php
												echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); // PHPCS: XSS ok.
											?>
										</td>

										<td class="product-remove action">
											<?php
												echo apply_filters( // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
													'woocommerce_cart_item_remove_link',
													sprintf(
														//'<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s">&times;</a>',
														'<a href="%s" class="remove" aria-label="%s" data-product_id="%s" data-product_sku="%s"><i class="ti-trash remove-icon"></i></a>',
														esc_url( wc_get_cart_remove_url( $cart_item_key ) ),
														esc_html__( 'Remove this item', 'woocommerce' ),
														esc_attr( $product_id ),
														esc_attr( $_product->get_sku() )
													),
													$cart_item_key
												);
											?>
										</td>

									</tr>
									<?php
								}
							}
							?>

							<?php do_action( 'woocommerce_cart_contents' ); ?>

							

							
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="total-amount">
						<div class="row">
							<div class="col-lg-10 col-md-5 col-12">
								<div class="left">
								<?php if ( wc_coupons_enabled() ) { ?>
									
									<div class="coupon">
										<label for="coupon_code"><?php //esc_html_e( 'Coupon:', 'woocommerce' ); ?></label> 
										<input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="<?php esc_attr_e( 'Coupon code', 'woocommerce' ); ?>" /> 
										<button type="submit" class="btn bg-white text-dark py-3" name="apply_coupon" value="<?php esc_attr_e( 'Apply coupon', 'woocommerce' ); ?>"><?php esc_attr_e( 'Apply', 'woocommerce' ); ?></button>
										<?php do_action( 'woocommerce_cart_coupon' ); ?>
									</div>
								<?php } ?>
								</div>
							</div>
							<div class="col">
								<button type="submit" class="btn" name="update_cart" value="<?php esc_attr_e( 'Update cart', 'woocommerce' ); ?>"><?php esc_html_e( 'Update cart', 'woocommerce' ); ?></button>
							</div>
						</div>
					</div>
		
		
					<?php do_action( 'woocommerce_cart_actions' ); ?>
		
					<?php wp_nonce_field( 'woocommerce-cart', 'woocommerce-cart-nonce' ); ?>
				</div>
			</div>
			<?php do_action( 'woocommerce_after_cart_contents' ); ?>
			
			<?php do_action( 'woocommerce_after_cart_table' ); ?>
		</form>

		<div class="row justify-content-end">
			<div class="col-lg-6 col-12">
				<?php do_action( 'woocommerce_before_cart_collaterals' ); ?>

				<div class="cart-collaterals">
					<?php
						/**
						 * Cart collaterals hook.
						 *
						 * @hooked woocommerce_cross_sell_display
						 * @hooked woocommerce_cart_totals - 10
						 */
						do_action( 'woocommerce_cart_collaterals' );
						?>
				</div>

				<?php do_action( 'woocommerce_after_cart' ); ?>
			</div>
		</div>


</div>
</div>