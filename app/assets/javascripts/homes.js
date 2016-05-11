$(document).on('ready page:load', function() {


  $('#food-1').on('click', likeOne)

  function likeOne(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-1').attr("value", "true");
        $(this).attr('class','like');
      }
      else if ($(this).hasClass('like')){
        $('#rand-1').attr("value", "false");
        $(this).attr('class','dislike');
      }
  };


  function  likeTwo(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-2').attr("value", "true");
        $(this).attr('class','like');
      }
      else if ($(this).hasClass('like')){
        $('#rand-2').attr("value", "false");
        $(this).attr('class','dislike');
      }
  };

  $('#food-2').on('click', likeTwo)

  function likeThree(ev) {
    console.log("Clicked")
      if ($(this).hasClass('dislike')){
        $('#rand-3').attr("value", "true");
        $(this).attr('class','like');
      }
      else if ($(this).hasClass('like')){
        $('#rand-3').attr("value", "false");
        $(this).attr('class','dislike');
      }
  };

  $('#food-3').on('click', likeThree)

});
