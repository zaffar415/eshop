<?php get_header(); ?>

<!-- Slider Area -->
<section class="hero-slider">
		<!-- Single Slider -->
		<div class="single-slider" style="background:url(<?php the_field('banner_image1'); ?>); background-size:cover; background-repeat:no-repeat;">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-9 offset-lg-3 col-12">
						<div class="text-inner">
							<div class="row">
								<div class="col-lg-7 col-12">
									<div class="hero-text">
                                        <?php the_field("banner_text1"); ?>
										
										<div class="button">
											<a href="<?php the_field("product_link"); ?>" class="btn">Shop Now!</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Single Slider -->
	</section>
	<!--/ End Slider Area -->



    <!-- Start Small Banner  -->
	<section class="small-banner section">
		<div class="container-fluid">
			<div class="row">
                <!-- Single Banner  -->
                <?php if(have_rows("small_banners")) :  ?>
                    <?php while(have_rows("small_banners")) : the_row(); ?>
                        <div class="col-lg-4 col-md-6 col-12">
                            <div class="single-banner">
                                <img src="<?php the_sub_field('small_banner_image'); ?>" alt="#" style="height:250px;">
                                <div class="content">
                                    <?php the_sub_field("small_banner_text"); ?>
                                    <a href="<?php the_sub_field('product_link'); ?>"><?php the_sub_field("link_text"); ?></a>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                <?php endif; ?>
				<!-- /End Single Banner  -->
			</div>
		</div>
	</section>
	<!-- End Small Banner -->
	
	<!-- Start Product Area -->
    <div class="product-area section">
            <div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title">
							<h2>Trending Item</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="product-info">
							<div class="nav-main">
								<!-- Tab Nav -->
								<ul class="nav nav-tabs" id="myTab" role="tablist">
									<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#man" role="tab">Man</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#women" role="tab">Woman</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#kids" role="tab">Kids</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#accessories" role="tab">Accessories</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#essential" role="tab">Essential</a></li>
									<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#prices" role="tab">Music</a></li>
								</ul>
								<!--/ End Tab Nav -->
							</div>
							<div class="tab-content" id="myTabContent">
								<!-- Start Single Tab -->
								<div class="tab-pane fade show active" id="man" role="tabpanel">
									<div class="tab-single">
										<div class="row">
										<?php 
										$args=array(
											'post_type'=>'product',
											'product_cat' => 'men',
											'limit'=>8,
											'orderby'=>array('post_date'=>'DESC'),
										);
										get_template_part("template-parts/template","product_4_cols",$args);
										
										?>
											
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
								<!-- Start Single Tab -->
								<div class="tab-pane fade" id="women" role="tabpanel">
									<div class="tab-single">
										<div class="row">
											<?php 
												$args=array(
													'post_type'=>'product',
													'product_cat'=>'women',
													'limit'=>8,
													'orderby'=>array('post_date'=>'DESC'),
												);

												get_template_part('template-parts/template','product_4_cols',$args);

											?>
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
								<!-- Start Single Tab -->
								<div class="tab-pane fade" id="kids" role="tabpanel">
									<div class="tab-single">
										<div class="row">
										<?php 
												$args=array(
													'post_type'=>'product',
													'product_cat'=>'kids',
													'limit'=>8,
													'orderby'=>array('post_date'=>'DESC'),
												);

												get_template_part('template-parts/template','product_4_cols',$args);

											?>
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
								<!-- Start Single Tab -->
								<div class="tab-pane fade" id="accessories" role="tabpanel">
									<div class="tab-single">
										<div class="row">
										<?php 
												$args=array(
													'post_type'=>'product',
													'product_cat'=>'accessories',
													'limit'=>8,
													'orderby'=>array('post_date'=>'DESC'),
												);

												get_template_part('template-parts/template','product_4_cols',$args);

											?>
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
								<!-- Start Single Tab -->
								<div class="tab-pane fade" id="essential" role="tabpanel">
									<div class="tab-single">
										<div class="row">
										<?php 
												$args=array(
													'post_type'=>'product',
													'product_cat'=>'essential',
													'limit'=>8,
													'orderby'=>array('post_date'=>'DESC'),
												);

												get_template_part('template-parts/template','product_4_cols',$args);

											?>
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
								<!-- Start Single Tab -->
								<div class="tab-pane fade" id="prices" role="tabpanel">
									<div class="tab-single">
										<div class="row">
										<?php 
												$args=array(
													'post_type'=>'product',
													'product_cat'=>'music',
													'limit'=>8,
													'orderby'=>array('post_date'=>'DESC'),
												);

												get_template_part('template-parts/template','product_4_cols',$args);

											?>
										</div>
									</div>
								</div>
								<!--/ End Single Tab -->
							</div>
						</div>
					</div>
				</div>
            </div>
    </div>
	<!-- End Product Area -->
	
	<!-- Start Midium Banner  -->
	<section class="midium-banner">
		<div class="container">
			<div class="row">
				<!-- Single Banner  -->
				<?php 
				if(have_rows('event_sale')){
					while(have_rows('event_sale')){
						the_row();
						?>

						<div class="col-lg-6 col-md-6 col-12">
							<div class="single-banner">
								<img src="<?php the_sub_field('banner_image'); ?>" alt="#" style="width:100%; height:340px;">
								<div class="content">
									<?php the_sub_field('banner_text'); ?>
									<a href="<?php the_sub_field('page_link'); ?>">Shop Now</a>
								</div>
							</div>
						</div>
						
						<?php
					}
				}
				?>
				
				<!-- /End Single Banner  -->
				
			</div>
		</div>
	</section>
	<!-- End Midium Banner -->
	
	<!-- Start Most Popular -->
	<div class="product-area most-popular section">
        <div class="container">
            <div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Hot Item</h2>
					</div>
				</div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="owl-carousel popular-slider">
						<!-- Start Single Product -->
						<?php 
						$args = array(
							'post_type' => 'product',
							'limit' => '8',
							//'orderby' => array( 'meta_value_num' => 'DESC', 'title' => 'ASC' ),
							'orderby' => array( 'post_date'=> 'DESC' ),
							//'orderby' => array( 'post_views'=> 'DESC' ),
							//'meta_key' => 'total_sales',
							);
							$query = new WC_Product_Query( $args );
							$products = $query->get_products();
							if ( $products ) {
							foreach ( $products as $product ) {
								$id=$product->get_id();
						?>
						<div class="single-product">
							<div class="product-img">
								<a href="<?php echo get_permalink($id); ?>">
									<img class="default-img" src="<?php echo get_the_post_thumbnail_url($id) ?>" alt="#" style="height:300px;">
									<img class="hover-img" src="<?php echo get_the_post_thumbnail_url($id) ?>" alt="#" style="height:300px;">
									<span class="out-of-stock">Hot</span>
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
									<span class="old">₹<?php echo $product->get_regular_price(); ?></span>
									<span>₹<?php echo $product->get_sale_price(); ?></span>
								</div>
							</div>
						</div>
						<?php
								}
							} else {
							echo __( 'No products found' );
							}
					
							wp_reset_query();
						?>
						<!-- End Single Product -->
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- End Most Popular Area -->

	<!-- Start Shop Home List  -->
	<section class="shop-home-list section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>On sale</h1>
							</div>
						</div>
					</div>
					<!-- Start Single List  -->
					<?php 
						$args = array(
							'post_type' => 'product',
							'limit' => '3',
							'orderby' => 'meta_value_num',
							'order' => 'desc',
							'meta_key'=>'_sale_price',
							//'orderby' => array( 'post_date'=> 'DESC' ),
							// 'orderby' => array( 'on_sale'=> 'DESC' ),
							// 'meta_key' => 'total_sales',
							);
							
							get_template_part("template-parts/template","product_1_cols",$args);
						  
					?>
					<!-- End Single List  -->
					
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>Best Seller</h1>
							</div>
						</div>
					</div>
					
					<!-- Start Single List  -->
					
						<?php 
							$args = array(
								'post_type' => 'product',
								'limit' => '3',
								'orderby' =>'meta_value_num',
								//'orderby' => array( 'post_date'=> 'DESC' ),
								// 'orderby' => array( 'post_views'=> 'DESC' ),
								'meta_key' => 'total_sales',
								);
								
								get_template_part("template-parts/template","product_1_cols",$args);
							
						?>
					
					<!-- End Single List  -->
					
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="row">
						<div class="col-12">
							<div class="shop-section-title">
								<h1>Top viewed</h1>
							</div>
						</div>
					</div>
					
					<!-- Start Single List  -->
					
						<?php 
							$args = array(
								'post_type' => 'product',
								'limit' => '3',
								// 'orderby' => array( 'meta_value_num' => 'DESC', 'title' => 'ASC' ),
								// 'orderby' => array( 'post_date'=> 'DESC' ),
								'suppress_filters' => false,
								'orderby' => array( 'post_views'=> 'DESC' ),
								// 'meta_key' => 'total_sales',
								);
								
								get_template_part("template-parts/template","product_1_cols",$args);
							
						?>

					
					<!-- End Single List  -->
					
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Home List  -->
	
	<!-- Start Cowndown Area -->
	<section class="cown-down">
		<div class="section-inner ">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6 col-12 padding-right">
						<div class="image">
							<img src="<?php the_field('deal_banner'); ?>" alt="#">
						</div>	
					</div>	
					<div class="col-lg-6 col-12 padding-left">
						<div class="content">
							<div class="heading-block">
								<p class="small-title">Deal of day</p>
								<h3 class="title"><?php the_field('deal_title'); ?></h3>
								<p class="text"><?php the_field("deal_description"); ?> </p>
								<h1 class="price"> <small style="font-size:14px;"><?php the_field("before_deal_price"); ?></small> ₹<?php the_field("deal_price"); ?> </h1>
								<div class="coming-time">
									<div class="clearfix" data-countdown="<?php the_field("deal_end_date"); //echo date("Y/m/d",strtotime("tomorrow")); ?>"></div>
								</div>
							</div>
						</div>	
					</div>	
				</div>
			</div>
		</div>
	</section>
	<!-- /End Cowndown Area -->
	
	<!-- Start Shop Blog  -->
	<section class="shop-blog section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>From Our Blog</h2>
					</div>
				</div>
			</div>
			<div class="row">
			<?php 
				$args=array(
					'post_type'=>'post',
					'posts_per_page'=>3,
				);

				$posts = new WP_Query($args);
				while($posts->have_posts())
				{
					$posts->the_post();
					?>
					<div class="col-lg-4 col-md-6 col-12">
					<!-- Start Single Blog  -->
					<div class="shop-single-blog">
						<img src="<?php echo the_post_thumbnail_url('medium'); ?>" alt="#">
						<div class="content">
							<p class="date"><?php echo get_the_date(); ?></p>
							<a href="<?php the_permalink(); ?>" class="title"><?php the_title(); ?></a>
							<a href="<?php the_permalink(); ?>" class="more-btn">Continue Reading</a>
						</div>
					</div>
					<!-- End Single Blog  -->
					</div>
					<?php
				}

			?>
			</div>
		</div>
	</section>
	<!-- End Shop Blog  -->
	
	<!-- Start Shop Services Area -->
	<section class="shop-services section home">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-rocket"></i>
						<h4>Free shiping</h4>
						<p>Orders over $100</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-reload"></i>
						<h4>Free Return</h4>
						<p>Within 30 days returns</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-lock"></i>
						<h4>Sucure Payment</h4>
						<p>100% secure payment</p>
					</div>
					<!-- End Single Service -->
				</div>
				<div class="col-lg-3 col-md-6 col-12">
					<!-- Start Single Service -->
					<div class="single-service">
						<i class="ti-tag"></i>
						<h4>Best Price</h4>
						<p>Guaranteed price</p>
					</div>
					<!-- End Single Service -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Services Area -->

	<!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <!-- Product Slider -->
									<div class="product-gallery">
										<div class="quickview-slider-active">
											<div class="single-slider">
												<img src="https://via.placeholder.com/569x528" alt="#">
											</div>
											<div class="single-slider">
												<img src="https://via.placeholder.com/569x528" alt="#">
											</div>
											<div class="single-slider">
												<img src="https://via.placeholder.com/569x528" alt="#">
											</div>
											<div class="single-slider">
												<img src="https://via.placeholder.com/569x528" alt="#">
											</div>
										</div>
									</div>
								<!-- End Product slider -->
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="quickview-content">
                                    <h2>Flared Shift Dress</h2>
                                    <div class="quickview-ratting-review">
                                        <div class="quickview-ratting-wrap">
                                            <div class="quickview-ratting">
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="yellow fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            <a href="#"> (1 customer review)</a>
                                        </div>
                                        <div class="quickview-stock">
                                            <span><i class="fa fa-check-circle-o"></i> in stock</span>
                                        </div>
                                    </div>
                                    <h3>$29.00</h3>
                                    <div class="quickview-peragraph">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
                                    </div>
									<div class="size">
										<div class="row">
											<div class="col-lg-6 col-12">
												<h5 class="title">Size</h5>
												<select>
													<option selected="selected">s</option>
													<option>m</option>
													<option>l</option>
													<option>xl</option>
												</select>
											</div>
											<div class="col-lg-6 col-12">
												<h5 class="title">Color</h5>
												<select>
													<option selected="selected">orange</option>
													<option>purple</option>
													<option>black</option>
													<option>pink</option>
												</select>
											</div>
										</div>
									</div>
                                    <div class="quantity">
										<!-- Input Order -->
										<div class="input-group">
											<div class="button minus">
												<button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
													<i class="ti-minus"></i>
												</button>
											</div>
											<input type="text" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1">
											<div class="button plus">
												<button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
													<i class="ti-plus"></i>
												</button>
											</div>
										</div>
										<!--/ End Input Order -->
									</div>
									<div class="add-to-cart">
										<a href="#" class="btn">Add to cart</a>
										<a href="#" class="btn min"><i class="ti-heart"></i></a>
										<a href="#" class="btn min"><i class="fa fa-compress"></i></a>
									</div>
                                    <div class="default-social">
										<h4 class="share-now">Share:</h4>
                                        <ul>
                                            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a class="youtube" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                            <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <!-- Modal end -->



<?php get_footer(); ?>