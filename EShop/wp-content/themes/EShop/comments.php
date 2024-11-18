<div class="col-12">
    <div class="comments">
        <h3 class="comment-title">Comments (<?php echo get_comments_number(); ?>)</h3>
        <!-- Single Comment -->
        <div class="single-comment">
            <?php wp_list_comments(array(
                    'style'=>'div',
                    'per_page'=>3,
                ));  ?>
        </div>
        <!-- End Single Comment --> 
    </div>
</div>
<div class="col-12">
    <div class="reply">
        <div class="reply-head">
            <h2 class="reply-title">Leave a Comment</h2>
            <!-- Comment Form -->
            <?php 
            
            comment_form(
                array(
                    'fields'=>array(
                        'author'=>'<div class="row"><div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>Your Name<span>*</span></label>
                                        <input type="text" id="author" name="author" placeholder="" required="required">
                                    </div>
                                </div>',
                        'email'=>'<div class="col-lg-6 col-md-6 col-12">
                                    <div class="form-group">
                                        <label>Your Email<span>*</span></label>
                                        <input type="email" id="email" name="email" placeholder="" required="required">
                                    </div>
                                </div></div>',
                        'url'=>"",
                    ),
                    'class_submit'=>'btn bg-dark text-white',
                )
            ); ?>
        </div>
    </div>
</div>