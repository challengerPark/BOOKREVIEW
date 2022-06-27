
$(function () {
    function slide() {
        $('#article1-3-2-1').stop().animate({ marginLeft: -100 }, function () {
            $('#article1-3-2-1 div:first').appendTo('#article1-3-2-1');
            $('#article1-3-2-1').css({ marginLeft: 0 });
        });
    }

    setInterval(slide, 4000);

});
