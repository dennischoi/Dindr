$(document).on('ready', function() {
  var turn = 0;
  var likedPics = []

  // $("#next-button").on('click', function() {
  //   turn++
  //
  //   if( turn === 1 ) {
  //     $(".first-set").css('display', 'none')
  //     $(".second-set").css('display', 'block')
  //     console.log(turn);
  //   }
  //   else if( turn === 2 ) {
  //     $(".second-set").css('display', 'none')
  //     $(".third-set").css('display', 'block')
  //     console.log(turn);
  //   }
  //   else if( turn === 3 ) {
  //     $(".third-set").css('display', 'none')
  //     $(".fourth-set").css('display', 'block')
  //     $(".next-button").off('click')
  //     console.log(turn);
  //   }
  //   else if( turn === 4 ) {
  //     var pic = $('.like')
  //     for (var i = 0; i < pic.length; i++)
  //       likedPics.push(pic.eq(i).attr('src'));
  //       console.log(likedPics)
  //   };
  //
  // });


  $("#vote").on('click', function(){
    var pic = $('.like')
    var likedPics = []
    var userId = $('#count-votes').data('user')
      for (var i = 0; i < pic.length; i++){
        likedPics.push(pic.eq(i).data('picid'));
        console.log(likedPics)
      }


    for (var pic in likedPics){
      $.ajax({
        url: '/votes',
        data:
        { user_id: userId,
          picture_id: pic,
          like: true,
        },
        dataType: 'html',
        method: 'post',
        success: function(data){
          alert("Votes Counted")
        }
      });
    };


  })


  $('.food-image').on('click', likeImage)

  function likeImage(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $(this).removeClass('dislike');
        $(this).addClass('like');
        $(this).css('border', '5px solid green');

      }
      else if ($(this).hasClass('like')){
        $(this).removeClass('like');
        $(this).addClass('dislike');
        $(this).css('border', 'transparent');
      }
  };




  // $('#next-button').on('click', function(){
  //
  //   var picture = $(".food-image").hasClass("like")
  //   //send the pictures that have the
  //
  //   $.ajax {
  //     url: "/votes/update",
  //     method: "post",
  //     dataType: "html",
  //     data: // Picture id
  //     success: function(){
  //       // maybe do something, maybe not
  //     }
  //
  //   }

  // })
  // Post request to vote update

});
