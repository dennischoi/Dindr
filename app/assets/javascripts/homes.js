$(document).on('ready page:load', function() {


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

  $('#food-2').on('click', likeTwo)

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

  $('#food-3').on('click', likeThree)



  $('#next-button').on('click', nextButton)

  function nextButton(ev) {
    alert("hiii you're doing great!")
    ev.preventDefault();

    $.ajax({
      type: "get",
      url: "/homes",
      dataType: "html",
      success: function(){
        alert("you're the best!")
      }
    })
  }

});
