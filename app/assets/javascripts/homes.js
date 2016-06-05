//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require burger
//= require modal

// Homepage arrows

$(document).on('ready page:load', function(){

  $("#arrow-1").click(function() {
      $('html, body').animate({ scrollTop: $("#home-page").offset().top }, 3500);
  });

  $("#arrow-2").click(function() {
      $('html, body').animate({ scrollTop: $("#homepage-button").offset().top }, 3500);
  });

});

// Make the burger disappear and the new nav appear:

$(window).on('scroll', function() {
    console.log($(this).scrollTop());
    if ($(this).scrollTop() > 850 && $('#nav-2').css('opacity') == 0 ) {
        $('#nav-2').animate({opacity : 1}, 'slow');
    }

    else if ($(this).scrollTop() < 850 && $('#nav-2').css('opacity') == 1 ) {
        $('#nav-2').animate({opacity : 0}, 'fast');
    }
});
