<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php wp_head(); ?>
</head>
<body class="js">

<!-- Preloader -->
<div class="preloader">
	<div class="preloader-inner">
		<div class="preloader-icon">
			<span></span>
			<span></span>
		</div>
	</div>
</div>
<!-- End Preloader -->
	
	
	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-12 col-12">
						<!-- Top Left -->
						<div class="top-left">
							<ul class="list-main">
								<li><i class="ti-headphone-alt"></i> <?php the_field("phone_number","options"); ?></li>
								<li><i class="ti-email"></i> <?php the_field("email_id","options"); ?></li>
							</ul>
						</div>
						<!--/ End Top Left -->
					</div>
					<div class="col-lg-8 col-md-12 col-12">
						<!-- Top Right -->
						<div class="right-content">
							<ul class="list-main">
								<li><i class="ti-location-pin"></i><a href="https://g.page/pixlogix?share"> Store location</a></li>
								<li><i class="ti-alarm-clock"></i> <a href="<?php echo get_permalink(get_page_by_title('shop')); ?>">Daily deal</a></li>
								<li><i class="ti-user"></i> <a href="<?php echo get_permalink(get_page_by_title('My Account')); ?>">My account</a>
									<div class="card dropdown">
										<?php foreach ( wc_get_account_menu_items() as $endpoint => $label ) : ?>
											<div class="p-2 <?php echo wc_get_account_menu_item_classes( $endpoint ); ?>">
												<a href="<?php echo esc_url( wc_get_account_endpoint_url( $endpoint ) ); ?>"><?php echo esc_html( $label ); ?></a>
										</div>
										<?php endforeach; ?>
									</div>
								</li>
								<?php if(is_user_logged_in()) : ?>
									<li><i class="ti-power-off"></i><a href="<?php echo site_url(),'/index.php/my-account/customer-logout/'; ?>">Logout</a></li>
								<?php else : ?>
								<li><i class="ti-power-off"></i><a href="<?php echo get_permalink(get_page_by_title('My Account')); ?>">Login</a></li>
								<?php endif; ?>
								
							</ul>
						</div>
						<!-- End Top Right -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Topbar -->
		<div class="middle-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-2 col-md-2 col-12">
						<!-- Logo -->
						<div class="logo">
                            <?php $logo_id=get_theme_mod("custom_logo");  
                                $logo=wp_get_attachment_image_src($logo_id);
                            ?>

							<a href="<?php echo site_url(); ?>"><img src="<?php echo $logo[0]; ?>" alt="logo"></a>
						</div>
						<!--/ End Logo -->
						<div class="mobile-nav"></div>
					</div>
					<div class="col-lg-8 col-md-7 col-12">
						<?php dynamic_sidebar("top_sidebar1"); ?>
					</div>
					<div class="col-lg-2 col-md-3 col-12">
						<div class="right-bar">
							<!-- Search Form -->
							<div class="sinlge-bar">
								<a href="<?php echo get_permalink(get_page_by_title('wishlist')); ?>" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
							</div>
							<div class="sinlge-bar">
								<a href="#" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i>
								<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<?php foreach ( wc_get_account_menu_items() as $endpoint => $label ) : ?>
										<li class="p-2 <?php echo wc_get_account_menu_item_classes( $endpoint ); ?>">
											<a href="<?php echo esc_url( wc_get_account_endpoint_url( $endpoint ) ); ?>"><?php echo esc_html( $label ); ?></a>
										</li>
									<?php endforeach; ?>
								</ul>
								</a>
							</div>
							<div class="sinlge-bar shopping">
									<?php global $woocommerce; 
									$items=$woocommerce->cart->get_cart();  ?>
								<a href="#" class="single-icon"><i class="ti-bag"></i> <span class="total-count"><?php echo count($items); ?></span></a>
								<!-- Shopping Item -->
								<div class="shopping-item">
									<div class="dropdown-cart-header">
										<span><?php echo count($items); ?> Items</span>
										<a href="<?php echo get_permalink(get_page_by_title('cart')); ?>">View Cart</a>
									</div>
									<ul class="shopping-list">
									<?php
									
									foreach($items as $product_key=>$item) :	
										$prod_id=$item['product_id']; 
										//$product=wc_get_product($prod_id); ?>
										<li>
											<a href="<?php echo WC()->cart->get_remove_url($product_key); ?>" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
											<a class="cart-img" href="<?php get_permalink($prod_id); ?>"><img src="<?php echo get_the_post_thumbnail_url($prod_id); ?>" alt="#"></a>
											<h4><a href="<?php echo get_permalink($prod_id); ?>"><?php echo $item['data']->get_title(); ?></a></h4>
											<p class="quantity"><?php echo $item['quantity']; ?>x - <span class="amount"> <?php echo $item['data']->get_price(); ?></span></p>
										</li>
									<?php endforeach; ?>
									</ul>
									<div class="bottom">
										<div class="total">
											<span>Total</span>
											<span class="total-amount"> <?php echo $woocommerce->cart->get_cart_total(); ?></span>
										</div>
										<a href="<?php echo get_permalink(get_page_by_title('checkout')); ?>" class="btn animate">Checkout</a>
									</div>
								</div>
								<!--/ End Shopping Item -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header Inner -->
		<div class="header-inner">
			<div class="container">
				<div class="cat-nav-head">
					<div class="row">
					<?php if(site_url().'/' == get_permalink()) : ?>
					<div class="col-lg-3">
							<div class="all-category">
								<h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>CATEGORIES</h3>
								<ul class="main-category">		
									<?php 
									$cats= get_terms('product_cat',array(
										
										'hide_empty'=>true,
										'hierarchical'=> true,
									));
									foreach($cats as $cat)
									{
										echo '<li><a href="'.get_category_link($cat->term_id).'">'.$cat->name.'</a></li>';
									}
									?>
								</ul>
							</div>
					</div>
					<?php endif ?>
							
					
						<div class="col-lg-9 col-12">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">	
										<div class="nav-inner">	
                                            <?php
                                            wp_nav_menu(
                                                array(
													"theme_location"=>"primary",
													"menu"=>'menu 1',
                                                    "items_wrap"=>'<ul class="nav main-menu menu navbar-nav">%3$s</ul>',
                                                    "link_before"=>"",
                                                    "link_after"=>"",
                                                )
                                            );
                                            ?>

										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
	<!--/ End Header -->
	<?php if(site_url().'/' != get_permalink()) : ?>
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="<?php echo site_url(); ?>">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="<?php echo get_page_link(); ?>">
								<?php the_title(); ?>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php endif; ?>
<!-- End Breadcrumbs -->