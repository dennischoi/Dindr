//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require burger

$(document).on('ready page:load', function(){

  $("#arrow-1").click(function() {
      $('html, body').animate({ scrollTop: $("#home-page").offset().top }, 3500);
  });

  $("#arrow-2").click(function() {
      $('html, body').animate({ scrollTop: $("#homepage-button").offset().top }, 3500);
  });

});
