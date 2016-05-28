// ----------------------------------------------------------------------------
// BURGER NAV
// ----------------------------------------------------------------------------
$(document).ready(function() {

  ( function () {
        $('.menu-trigger').mouseenter(function() {
            $(this).toggleClass('active');
            // $('#nav-box').toggle();
            $('#nav-box').css('visibility', 'visible');
        });
    }.call(this));

    ( function () {
      $('.navigation').mouseleave(function() {
        $('.menu-trigger').toggleClass('active');
        // $('#nav-box').toggle();
        $('#nav-box').css('visibility', 'hidden');
        // $('#nav-box').css('color', 'green');
      });
    }.call(this));

  });
