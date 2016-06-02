// ----------------------------------------------------------------------------
// BURGER NAV
// ----------------------------------------------------------------------------
$(document).ready(function() {
console.log('document loaded');
  ( function () {
        $('.hamburger').mouseenter(function() {
            $('.menu-trigger').addClass('active');
            $('#nav-box').css('visibility', 'visible');
        });
    }.call(this));

    ( function () {
      $('.hamburger').on('click', function() {
        $('.menu-trigger').removeClass('active');
        $('#nav-box').css('visibility', 'hidden');
      });
    }.call(this));
  });

// Make the burger disappear and the new nav appear:

$(window).on('scroll', function() {
    console.log($(this).scrollTop());
    if ($(this).scrollTop() > 850 && $('#nav-2').css('opacity') == 0 ) {
        $('#nav-2').animate({opacity : 1}, 'slow');
        $('.navigation').animate({opacity: 0}, 'fast');
    }

    else if ($(this).scrollTop() < 850 && $('#nav-2').css('opacity') == 1 ) {
        $('#nav-2').animate({opacity : 0}, 'fast');
        $('.navigation').animate({opacity: 1}, 'fast');
    }
});
