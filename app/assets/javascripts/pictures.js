$(document).on('ready page:load', function() {

  // called the event handler on the body because .food-image is always new when we render new pictures. So we need to call on its parents class which allows its children to be clicked on even when it changes.
  $('body').on('click','.food-image', function(ev){
    voteImage(ev)
    changeImage(ev)
  });

  // function likeImage(ev) {
  //   console.log("Clicked")
  //     if ($(this).hasClass('dislike')){
  //       $('.food-image').addClass('dislike')
  //       $(this).removeClass('dislike');
  //       $(this).addClass('like');
  //       $('.food-image').css('border', 'transparent').removeClass('like');
  //       $(this).css('border', '5px solid green');
  //     }
  // };

  $('body').on('mouseover mouseleave', '.food-image', function(ev){
    $(ev.target).toggleClass('on-hover')
  })

  function changeImage(ev){
    ev.stopPropagation();
    $.ajax({
      url: '/game',
      method: 'get',
      dataType: 'script'
    })

  };


  function voteImage(ev){
    ev.preventDefault();
    // ev.target targets the actual image because will target the body
    var likedPic = $(ev.target).data('picid')
    var userId = $('.pic-sets').data('user')
    console.log(userId)
    console.log(likedPic)

    $.ajax({
      url: '/votes',
      method: 'post',
      dataType: 'html',
      data: {
        user_id: userId,
        picture_id: likedPic,
        like: true
      },
      success: function(data){
      }
    })
  }


});
