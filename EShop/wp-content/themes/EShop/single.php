<?php get_header(); ?>
echo "single.php";
<section class="product-area shop-sidebar shop section">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-12">
						<div class="shop-sidebar">
                                <!-- Single Widget -->
                                <?php dynamic_sidebar('shop_sidebar'); ?>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 col-12">
                        <?php    
                        if(have_posts())
                        {
                            while(have_posts())
                            {
                                the_post();
                                the_content();
                            }
                        }
                        ?>
                    </div>
                </div>
            </div>
</section>

<?php get_footer();  ?>