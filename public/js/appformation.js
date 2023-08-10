$( document ).ready(function() {

    var menu = $('.navigation');

    var checkScroll = function() {
      if ($(window).scrollTop() > 60) {
        menu.addClass('fixed');
      } else {
        menu.removeClass('fixed');
      }
    };
  
    checkScroll();
  
    $(window).scroll(checkScroll);

});

