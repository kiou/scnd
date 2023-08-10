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

    $(".owl-one").owlCarousel({
        loop:false,
        items:1,
        nav:true,
        navText:['<i class="fas fa-chevron-left"></i>','<i class="fas fa-chevron-right"></i>'],

    });

});

