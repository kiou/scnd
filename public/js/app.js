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

    $(document).on('click','.btnMore',function(e){
        e.preventDefault();

        var elem = $(this);
        var more = elem.attr('data-more');
        var content = $('.viewMore[data-more="'+more+'"]');
        var display = $('.viewDisplay[data-more="'+more+'"]');

        elem.toggleClass('open');

        if(elem.hasClass('open')){
            elem.html('Fermer');
        }else{
            elem.html('Lire la suite');
        }

        content.slideToggle();
        display.slideToggle();
    });

});

