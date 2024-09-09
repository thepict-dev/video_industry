(function ($) {
    $.fn.dragScroll = function () {
        var mouseDown = false;
        var startX, scrollLeft;

        var startDragging = function (e) {
            mouseDown = true;
            startX = e.pageX - $(this).offset().left;
            scrollLeft = $(this).scrollLeft();
        };

        var stopDragging = function (e) {
            mouseDown = false;
        };

        var move = function (e) {
            if (!mouseDown) { return; }
            e.preventDefault();
            var x = e.pageX - $(this).offset().left;
            var walk = (x - startX) * 2; // 스크롤 속도 조절
            $(this).scrollLeft(scrollLeft - walk);
        };

        $(this).on('mousedown', startDragging)
            .on('mouseup mouseleave', stopDragging)
            .on('mousemove', move);

        return this;
    };
})(jQuery);


$(document).ready(function () {
    $('.navigator').dragScroll();


    $('.category-head').click(function (e) {
        // e.preventDefault();
        // e.stopPropagation();
        let actived = $(this).parent();
        console.log(actived);
        $('.category').each(function (index, element) {
            if (element === actived[0]) {
                $(this).toggleClass("active")
            } else {
                $(element).removeClass("active");
            }
        });
    })
    $('input[name="certification_type"]').change(function (e) {
        e.preventDefault();
        console.log(e.target.id);
    });
});
