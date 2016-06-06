$(document).on('ready page:load', function(){


  $('body').on('click','.accept-request-button', function(ev){
    console.log("You're a badass - ariane")

    var invId = $(ev.target).data('invitationid')

    console.log(invId)
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
  });

  $('body').on('click', '.delete-request-button', function(ev) {
    console.log("I deleted you")
    var invId = $(ev.target).data('invitationid')
    console.log(invId)

    // JS Alert function
    // var deleteAnswer = confirm ("Are you sure you want to delete?");

    // if (deleteAnswer){
    $.ajax({
      url: "/invitations/" + invId,
      method: "DELETE",
      dataType: 'script',

    });
    // };
  });

});
