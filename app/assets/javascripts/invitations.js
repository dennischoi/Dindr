$(document).on('ready', function(){

  $('.accept_button').on('click', function(){
    console.log("You're a badass - ariane")

    var invId = $('.delete').data('invitationid')

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

})
