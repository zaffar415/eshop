

<section class="product-area shop-sidebar shop section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-12">
						<div class="shop-sidebar">
                                <!-- Single Widget -->
                                <?php dynamic_sidebar('shop_sidebar'); ?>
								<!--/ End Single Widget -->								
						</div>
					</div>
					<div class="col-lg-9 col-md-8 col-12">
						<div class="row">
							<div class="col-12">
								<!-- Shop Top -->
								<div class="shop-top">
									<div class="shop-shorter">
									<form action="" method="get">
									<input type="hidden" name="s" value="<?php echo $_REQUEST['s']; ?>">
									<input type="hidden" name="post_type" value="<?php echo $_REQUEST['post_type']; ?>">
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
													<option value="main_order" <?php echo $_REQUEST['orderby']=='main_order' ? 'selected=selected' : ''; ?> >Default</option>
													<option value="total_sales" <?php echo $_REQUEST['orderby']=='total_sales' ? 'selected=selected' : ''; ?>>Popularity</option>
													<option value="_wc_average_rating" <?php echo $_REQUEST['orderby']=='_wc_average_rating' ? 'selected=selected' : ''; ?>>Average rating</option>
													<option value="_price" <?php echo $_REQUEST['orderby']=='_price' ? 'selected=selected' : ''; ?>>Price : Low to High</option>
													<option value="_price-desc" <?php echo $_REQUEST['orderby']=='_price-desc' ? 'selected=selected' : ''; ?>>Price : High to Low</option>
												</select>
										</div>
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
						<div class="row">
                            <?php if(have_posts()) : ?>
                                <?php while(have_posts()) : 
                                    the_post(); 
                                    $id=get_the_ID();
                                    $product=wc_get_product($id); ?>
									
									<div class="col-lg-4 col-md-6 col-12">
										<div class="single-product">
											<div class="product-img">
												<a href="<?php echo get_permalink($id); ?>">
													<img class="default-img" src="<?php echo get_the_post_thumbnail_url($id); ?>" alt="#">
													<img class="hover-img" src="<?php echo get_the_post_thumbnail_url($id); ?>" alt="#">
												</a>
												<div class="button-head">
													<div class="product-action">
														<a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
														<?php echo do_shortcode('[yith_wcwl_add_to_wishlist product_id="'.$id.'"]'); ?>
														<a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
													</div>
													<div class="product-action-2">
														<a title="Add to cart" href="index.php/shop/<?php echo do_shortcode('[add_to_cart_url id="'.$id.'"]'); ?>">Add to cart</a>
													</div>
												</div>
											</div>
											<div class="product-content">
												<h3><a href="<?php echo get_permalink($id); ?>"><?php echo $product->get_title(); ?></a></h3>
												<div class="product-price">
													<span>₹<?php echo $product->get_price(); ?></span>
												</div>
											</div>
										</div>
									</div>

                                <?php endwhile; ?>
                            <?php endif; ?>





                            <?php 
                            // if(have_posts())
                            // {
                            //     while(have_posts())
                            //     {
                            //         the_post();
							// 		the_title();
									
							// 		the_content();
									
                            //     }
                            // }
                            ?>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--/ End Product Style 1  -->	

<?php

//echo do_shortcode('[products]');

get_footer();

