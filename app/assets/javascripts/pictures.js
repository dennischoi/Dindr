$(document).on('ready page:load', function() {

  var turn = 0
  var skip = 0
  // called the event handler on the body because .food-image is always new when we render new pictures. So we need to call on its parents class which allows its children to be clicked on even when it changes.
  $('body').on('click','.food-image', function(ev){
    // Potential transition for when a picture is liked/Clicked
      turn++;
      $(ev.target).toggleClass('on-like')
      voteImage(ev)
      changeImage(ev)
      console.log(turn)
      $('span.meter').css('width', turn/10*100 + "%")

      if (turn == 10){
        $('#agg-pics-button').addClass('enough-votes')
        // .on('click', function(){
        //   updateCuisines(ev)
        //   updateTags(ev)

      }
  });

  $('#skip-button').on('click', skips)

  function skips(ev){
    console.log(skip)
    ev.stopPropagation();
      skip++
      changeImage(ev)
      if (skip == 3){
        changeImage(ev)
        $(this).css('opacity', '0.4').off('click')
        alert("You have used your 3 skips!")
      };
  }

  $('#reset-button').on('click', function(ev){
    console.log(skip)
    $('#skip-button').off('click')
    ev.stopPropagation();
    turn = 0;
    $.ajax({
      url: '/votes',
      method: 'DELETE',
      dataType: 'script'
    });

    $('#skip-button').css('opacity', '1').on('click', skips);
    $('#agg-pics-button').removeClass('enough-votes');
    $('span.meter').css('display', 'block')
    $('span.meter').css('width', '0%');
    // updateCuisines(ev);
    // updateTags(ev);
    changeImage(ev);
    skip = 0;
  });



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
      dataType: 'script',
      data: {
        user_id: userId,
        picture_id: likedPic,
        like: true
      },
    });
  };


// Progress bar fix errors where .top is being errored on other pages other than pictures.js
// tried changing window to just the game-page but didnt work

  function progressRelocate() {
    var topWindow = $(window).scrollTop();
    var topDiv = $('#progress-anchor').offset().top;

    if (topWindow > topDiv) {
      $('.progress-bar').addClass('stick');
      $('#progress-anchor').height($('.progress-bar').outerHeight());
    } else {
      $('.progress-bar').removeClass('stick');
      $('#progress-anchor').height(0);

    }
  }

  $(function() {
    $(window).scroll(progressRelocate);
    progressRelocate();

  });




});
