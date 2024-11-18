<?php get_header(); ?>
<?php if(have_posts()) : ?>
    <?php while(have_posts()) : the_post(); ?>
    
    <section class="blog-single section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="blog-single-main">
                        <div class="row">
                            <div class="col-12">
                                <div class="image">
                                    <img src="<?php the_post_thumbnail_url(); ?>" alt="#">
                                </div>
                                <div class="blog-detail">
                                    <h2 class="blog-title"><?php the_title(); ?></h2>
                                    <div class="blog-meta">
                                        <span class="author"><a href="#"><i class="fa fa-user"></i><?php the_author(); ?></a><a href="#"><i class="fa fa-calendar"></i><?php the_date(); ?></a><a href="#"><i class="fa fa-comments"></i>Comment (<?php echo get_comments_number(); ?>)</a></span>
                                    </div>
                                    <div class="content">
                                        <?php the_content(); ?>
                                    </div>
                                </div>
                                <div class="share-social">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="content-tags">
                                                <h4>Tags:</h4>
                                                <ul class="tag-inner">
                                                    <?php
                                                        the_tags('<li>','</li><li>','</li>'); 
                                                        //<li><a href="'.get_tag_link($tag->term_id).'">','</a></li><li><a href="'.get_tag_link($tag->term_id).'">','</a></li>
                                                    ?>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <?php comments_template(); ?>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    
                    <div class="main-sidebar">
                        <?php dynamic_sidebar('blog_single_sidebar'); ?>
                        
                    </div>
                </div>


            </div>
        </div>
    </section>

    <?php endwhile; ?>
<?php endif; ?>







<?php get_footer(); ?>