$(document).on('ready page:load', function(){


  $('body').on('click','.accept-request-button', function(ev){
    console.log("You're a badass - ariane")

    var invId = $(ev.target).data('invitationid')
    var acceptAnswer = confirm ("Do you want to Dindr with this person?")

// Only for Safari
    console.log(invId)
    if (acceptAnswer) {
      $.ajax({
        url: "/invitations/" + invId,
        method: 'patch',
        dataType: 'script',
        data: {
          invitation: {
            pending: false
          }
        }
      });
    };
  });

  $('body').on('click', '.delete-request-button', function(ev) {
    console.log("I deleted you")
    var invId = $(ev.target).data('invitationid')
    console.log(invId)

    // JS Alert function
    var deleteAnswer = confirm ("Are you sure you want to delete?");


    if (deleteAnswer){
      $.ajax({
        url: "/invitations/" + invId,
        method: "DELETE",
        dataType: 'script',

      });
    };
  });


  $('body').on('click', '#see-pending-invitations-button', function() {
      $('.invitation-pending-container').toggleClass( "button-clicked");
      $('.dindr-date-container').removeClass( "button-clicked");
      $('html,body').animate({
    scrollTop: $(".invitation-pending-container").offset().top},
    '500');
  });

  $('body').on('click', '#see-dindr-dates-button', function() {
      $('.dindr-date-container').toggleClass( "button-clicked");
      $('.invitation-pending-container').removeClass( "button-clicked");
      $('html,body').animate({
        scrollTop:
      $(".dindr-date-container").offset().top},
      'slow');
  });

  $(function(){
    var n = $('.the-dates').length

    $('.inner-wrap-dates').css('width', (n * 250) + (n * 7) + 'px' )
  });

  // $("#arrow-2").click(function() {
  //     $('html, body').animate({ scrollTop: $("#homepage-button").offset().top }, 3500);
  // });


});
