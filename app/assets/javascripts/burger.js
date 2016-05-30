// ----------------------------------------------------------------------------
// BURGER NAV
// ----------------------------------------------------------------------------
$(document).ready(function() {

  ( function () {
        $('.hamburger').mouseenter(function() {
            $('.menu-trigger').toggleClass('active');
            $('#nav-box').css('visibility', 'visible');
        });
    }.call(this));

    ( function () {
      $('.navigation').mouseleave(function() {
        $('.menu-trigger').toggleClass('active');
        $('#nav-box').css('visibility', 'hidden');
      });
    }.call(this));

    ( function () {
      $('#nav-box').hover(function() {
        $('#nav-box').css('visibility', 'visible');
            });
    }.call(this));
  });
