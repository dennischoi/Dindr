$(document).on('ready', function() {
  var turn = 0;

  $(".next-button").on('click', function() {
    turn++

    if( turn === 1 ) {
      $(".first-set").css('display', 'none')
      $(".second-set").css('display', 'block')
      console.log(turn);
    }
    else if( turn === 2 ) {
      $(".second-set").css('display', 'none')
      $(".third-set").css('display', 'block')
      console.log(turn);
    }
    else if( turn === 3 ) {
      $(".third-set").css('display', 'none')
      $(".fourth-set").css('display', 'block')
      $(".next-button").off('click')
      console.log(turn);
    };
  });

  $('#food-1').on('click', likeOne)

  function likeOne(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-1').attr("value", "true");
        $(this).attr('class','like');
        $(this).css('border', '5px solid green');
      }
      else if ($(this).hasClass('like')){
        $('#rand-1').attr("value", "false");
        $(this).attr('class','dislike');
        $(this).css('border', 'transparent');
      }
  };


  $('#food-2').on('click', likeTwo)

  function  likeTwo(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-2').attr("value", "true");
        $(this).attr('class','like');
        $(this).css('border', '5px solid green');
      }
      else if ($(this).hasClass('like')){
        $('#rand-2').attr("value", "false");
        $(this).attr('class','dislike');
        $(this).css('border', 'transparent');
      }
  };

  $('#food-3').on('click', likeThree)

  function likeThree(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-3').attr("value", "true");
        $(this).attr('class','like');
        $(this).css('border', '5px solid green');
      }
      else if ($(this).hasClass('like')){
        $('#rand-3').attr("value", "false");
        $(this).attr('class','dislike');
        $(this).css('border', 'transparent');
      }
  };

});
