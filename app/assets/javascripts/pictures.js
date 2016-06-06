$(document).on('ready page:load', function() {

  var turn = 0
  var skip = 0

// RESET VOTES WHEN VISITING THE GAME PAGE ONLY
  if (window.location.pathname == "/game" && turn < 1) {
    deleteVotes()
  }
  // called the event handler on the body because .food-image is always new when we render new pictures. So we need to call on its parents class which allows its children to be clicked on even when it changes.
  $('body').on('click','.food-image', function(ev){

      turn++;
      $(ev.target).toggleClass('on-like')
      voteImage(ev)
      changeImage(ev)
      console.log(turn)

      if (turn < 11)
      $('span.meter').css('width', turn/10*100 + "%")


      if (turn == 10){
        // This has to be changed to heroku url when launched!
        window.location = "http://dindrdates.herokuapp.com/user/cuisines?"
        // "localhost:3000/user/cuisines?"
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

  function deleteVotes(){
    $.ajax({
      url: '/votes',
      method: 'DELETE',
      dataType: 'script'
    });
  }
  //
  // $('body').on('click', '#reset-button', function(ev){
  //   console.log(skip)
  //
  //   // Giving the pic-sets class "game-started" when the game has started
  //
  //   $(".pic-sets").addClass("game-started")
  //   $('#skip-button').off('click')
  //   ev.stopPropagation();
  //   turn = 0;
  //   $.ajax({
  //     url: '/votes',
  //     method: 'DELETE',
  //     dataType: 'script'
  //   });
  //
  //   $('#skip-button').css('opacity', '1').on('click', skips);
  //   $('#reset-button').removeClass('enough-votes');
  //   // updateCuisines(ev);
  //   // updateTags(ev);
  //   changeImage(ev);
  //   skip = 0;
  // });
  //


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
    var div = $('#progress-anchor');
    if (div.length) {

      var topDiv = $('#progress-anchor').offset().top;
      var topWindow = $(window).scrollTop();

      if (topWindow > topDiv) {
        $('.progress-bar').addClass('stick');
        $('#progress-anchor').height($('.progress-bar').outerHeight());
      } else {
        $('.progress-bar').removeClass('stick');
      $('#progress-anchor').height(0);

      }
    }
  }

  $(function() {
    $(window).scroll(progressRelocate);
    progressRelocate();
  });

});
