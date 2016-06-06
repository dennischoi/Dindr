$(document).on('ready page:load', function(){


  $('body').on('click','.accept-request-button', function(ev){
    console.log("You're a badass - ariane")

    var invId = $(ev.target).data('invitationid')
    var acceptAnswer = confirm ("Do you want to Dindr with this person?")

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
    var deleteAnswer = confirm ("Are you sure you want to delete?");

    if (deleteAnswer){
      $.ajax({
        url: "/invitations/" + invId,
        method: "DELETE",
        dataType: 'script',


        // success: function(){
        //
        // }
        // data: {
        //   "_method":"delete"
        // }
      });
    };
  });


  $('body').on('click', '#see-pending-invitations-button', function() {
      alert("HAYYYYY");
      $('.invitation-pending-container').toggleClass( "button-clicked");
      $('.dindr-date-container').removeClass( "button-clicked");
  });

  $('body').on('click', '#see-dindr-dates-button', function() {
      alert("HAYYYYYHIIIIIEEE");
      $('.dindr-date-container').toggleClass( "button-clicked");
      $('.invitation-pending-container').removeClass( "button-clicked");
  });

  // $("#arrow-2").click(function() {
  //     $('html, body').animate({ scrollTop: $("#homepage-button").offset().top }, 3500);
  // });


});
