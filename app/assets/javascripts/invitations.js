$(document).on('ready', function(){


  $('body').on('click','.accept_button', function(ev){
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
    })
  })

  $('body').on('click', '.delete', function(ev) {
    console.log("I deleted you")
    var invId = $(ev.target).data('invitationid')
    console.log(invId)

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
    })
  })

})
