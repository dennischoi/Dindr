$(document).on('ready page:load', function(){


  $("#arrow").click(function() {
      $('html, body').animate({
          scrollTop: $("#homepage-button").offset().top
      }, 3000);
  });

});
