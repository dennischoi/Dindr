$(document).on('ready', function(){

var invId = $('.delete').data('invitationid')

  $('.accept_button').on('click', function(){
    console.log("You're a badass - ariane")


    $.ajax({
      url: "/invitations/" + invId,
      method: 'patch',
      dataType: 'script',
      data: {
        invitation: {

          pending: false
        }
      }
    })
  })

  $('.delete').on('click', function() {
    console.log("I deleted you")

    $.ajax({
      url: "/invitations/" + invId,
      method: "post",
      dataType: 'script',
      data: {
        "_method":"delete"
      }
    })
  })

})
