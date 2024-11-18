	
	<!-- Start Shop Newsletter  -->
	<section class="shop-newsletter section">
		<div class="container">
			<div class="inner-top">
				<div class="row">
					<div class="col-lg-8 offset-lg-2 col-12">
						<!-- Start Newsletter Inner -->
						<div class="inner">
							<h4>Newsletter</h4>
							<p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
							<?php echo do_shortcode('[mc4wp_form id="179"]'); ?>
						</div>
						<!-- End Newsletter Inner -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Newsletter -->

	
	    
<!-- Start Footer Area -->
<footer class="footer">
		<!-- Footer Top -->
		<div class="footer-top section">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer about">
							<div class="logo">
								<a href="index.html"><img src="<?php the_field('footer_logo','options'); ?>" alt="#"></a>
							</div>
							<p class="text"><?php echo get_field("footer_description","options"); ?></p>
					
							<p class="call">
					
							<span><a href="tel:<?php the_field("phone_number","option"); ?>"><?php the_field("phone_number","option"); ?></a></span>
							</p>
						</div>
						<!-- End Single Widget -->
					</div>
					
						<!-- Single Widget -->
						
						
					<?php dynamic_sidebar("sidebar-1"); ?>
					<?php dynamic_sidebar("sidebar-2"); ?>
						
					<div class="col-lg-3 col-md-6 col-12">
						<!-- Single Widget -->
						
						<div class="single-footer social">
						
							<h4>Get In Touch</h4>
							<!-- Single Widget -->
							<div class="contact">
								<ul>
									<li><?php the_field("address","option"); ?></li>
									<li><?php the_field("phone_number","option"); ?></li>
									<li><?php the_field("email_id","option"); ?></li>
								</ul>
							</div>
							
							<!-- End Single Widget -->
							<ul>
								<li><a href="<?php the_field('facebook_page_link','options'); ?>"><i class="ti-facebook"></i></a></li>
								<li><a href="<?php the_field('twitter_link','options'); ?>"><i class="ti-twitter"></i></a></li>
								<li><a href="<?php the_field('youtube_channel_link','options'); ?>"><i class="ti-flickr"></i></a></li>
								<li><a href="<?php the_field('insta_page_link','options'); ?>"><i class="ti-instagram"></i></a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Top -->
		<div class="copyright">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="left">
								<p>Copyright © 2020 <a href="http://www.wpthemesgrid.com" target="_blank">Wpthemesgrid</a>  -  All Rights Reserved.</p>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="right">
								<img src="<?php echo get_template_directory_uri(); ?>/assets/images/payments.png" alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
    <!-- /End Footer Area -->
    

    
    <?php wp_footer(); ?>
</body>
</html>