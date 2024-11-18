<?php
/**
 * Template Name: Contact
 */
get_header(); ?>

<section id="contact-us" class="contact-us section">
		<div class="container">
				<div class="contact-head">
					<div class="row">
						<div class="col-lg-8 col-12">
							<div class="form-main">
								<div class="title">
									<h4>Get in touch</h4>
									<h3>Write us a message</h3>
                                </div>
                                <?php the_content(); ?>
                            </div>
                        </div>

                        <div class="col-lg-4 col-12">
							<div class="single-head">
								<div class="single-info">
									<i class="fa fa-phone"></i>
									<h4 class="title">Call us Now:</h4>
									<ul>
										<li><?php echo the_field("phone_number","option"); ?></li>
									</ul>
								</div>
								<div class="single-info">
									<i class="fa fa-envelope-open"></i>
									<h4 class="title">Email:</h4>
									<ul>
										<li><a href="mailto:<?php echo the_field("email_id","option"); ?>"><?php echo the_field("email_id","option"); ?></a></li>
									</ul>
								</div>
								<div class="single-info">
									<i class="fa fa-location-arrow"></i>
									<h4 class="title">Our Address:</h4>
									<ul>
										<li>KA-62/1, Travel Agency, 45 Grand Central Terminal, New York.</li>
									</ul>
								</div>
							</div>
						</div>

                    </div>
                </div>
            </div>
        </div>
</section>

<div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.5808800886866!2d72.50761651496812!3d23.03915618494464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84a78dd6c991%3A0x41893c9f4471eac1!2sPIXLOGIX%20INFOTECH%20PVT.%20LTD.!5e0!3m2!1sen!2sin!4v1601281378198!5m2!1sen!2sin" width=100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div>

<?php get_footer(); ?>