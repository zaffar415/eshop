$(".main-menu>li>ul").attr("class", "dropdown");
//alert($(".main-menu>li>ul").attr("class"));
$(".says").remove();
$(".comment-reply-link").prepend('<i class="fa fa-reply" aria-hidden="true"></i> ');

/***********  Pagination  *************/
$(".woocommerce-pagination>.page-numbers").addClass("row");
$(".woocommerce-pagination>.page-numbers").addClass("justify-content-center text-center");
$(".woocommerce-pagination li").addClass("col-1");
$(".woocommerce-pagination li").addClass("btn-warning py-2");
$(".woocommerce-pagination li a").css("padding", "40%");
$(".woocommerce-pagination li span").css({ "padding": "40%", 'color': 'white' });


//$("select").css("display", "block");

// $(".quantity>input").change(() => {
//     $("button[name=update_cart]").click();
// });

//$(".form-row").removeClass("form-row");