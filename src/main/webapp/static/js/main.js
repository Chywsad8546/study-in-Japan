$(function(){
    courseTab();
});

function courseTab(){
    var $itemli = $(".tabs_item li");
    $itemli.click(function() {
        $(this).addClass('current').siblings().removeClass('current');
        var index = $(this).index();
        console.log($(this).parents('#fixed_bottom_header').next().children());
        var $item_show = $(this).parents('#fixed_bottom_header').next().find('.tabs_cont');
        $item_show.eq(index).show().siblings().hide();
    });
}

if($('.tabs_cont_box').length){
    $(window).on("scroll",function(){
        var window_height = $(window).height();
        var document_height = $(document).height();
        var scroll_top = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
        var standard_line = $('.tabs_cont_box').offset().top;
        var standard_line_wrap = $('.tabs_cont_height').height();
        var fixed_self = $('#side_assess_fixed').height();

        if(scroll_top > (standard_line - 40)){
            $('#side_assess_fixed').addClass('fixed');
            $('#side_assess_fixed').css('bottom','auto');
        }else {
            $('#side_assess_fixed').removeClass('fixed');
            $('#side_assess_fixed').css('bottom','auto');
        }

        if(scroll_top > (standard_line + standard_line_wrap - fixed_self - 91) ){
            $('#side_assess_fixed').removeClass('fixed');
            $('.side_assess_box').css('bottom','0');
        }else{
            $('.side_assess_box').css('bottom','auto');
        }
    });
}

