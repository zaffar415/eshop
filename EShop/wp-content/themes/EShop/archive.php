<?php get_header(); ?>
<div class="blog-single section">
    <div class="container">
        <div class="row">
            <?php if(have_posts()) : ?>

            <?php while(have_posts()) : the_post(); ?>
                <div class="col-lg-4 col-md-6 col-12">
					<!-- Start Single Blog  -->
					<div class="shop-single-blog">
                    <a href="<?php the_permalink(); ?>" class="title"><img src="<?php echo the_post_thumbnail_url('medium'); ?>" alt="#" style="height:250px;">
						<div class="content">
                            <h3 class="mt-2"><?php the_title(); ?></h3></a>
                            <br>
                            <div><?php the_excerpt(); ?></div><a href="<?php the_permalink(); ?>">Read More</a>
                            <br> <br>
                            <div><p class="date"><?php echo get_the_date(); ?> by <?php the_author(); ?></p></div>
						</div>
					</div>
					<!-- End Single Blog  -->
					</div>

            <?php endwhile; ?>
            <?php endif ?>
        </div>

    </div>
</div>

<?php get_footer(); ?>