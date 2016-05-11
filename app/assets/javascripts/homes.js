$(document).on('ready page:load', function() {


  function likeOne(ev) {
    console.log("Clicked")
      $('#food-1').addClass('like');
      $('#food-1').removeClass('dislike');

      $('#food-1').off('click');
  };

$('#like-button1').on('click', likeOne)

  function  likeTwo(ev) {
    console.log('Click 2')

    $('#food-2').addClass('like');
    $('#food-2').removeClass('dislike');

    $('#food-2').off('click');
  };

$('#like-button2').on('click', likeTwo)


  function likeThree(ev) {
    console.log('Click 3')

    $('#food-3').addClass('like');
    $('#food-3').removeClass('dislike');

    $('#food-3').off('click');
  };

$('#like-button3').on('click', likeThree)


  function dislikeOne(ev) {
    console.log('Dislike 1')

      $('#food-1').addClass('dislike');
      $('#food-1').removeClass('like');

      $('#food-1').off('click');
  };

$('#dislike-button1').on('click', dislikeOne)


  function dislikeTwo(ev) {
    console.log('Dislike 2')

      $('#food-2').addClass('dislike');
      $('#food-2').removeClass('like');

      $('#food-2').off('click');
  };

$('#dislike-button2').on('click', dislikeTwo)


  function dislikeThree(ev) {
    console.log('Dislike 3')

      $('#food-3').addClass('dislike');
      $('#food-3').removeClass('like');

      $('#food-3').off('click');
  };

$('#dislike-button3').on('click', dislikeThree)

});
