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
      $('span.meter').css('width', turn/3*100 + "%")

      if (turn == 3){
        $('#agg-pics-button').addClass('enough-votes').on('click', function(){
          updateCuisines(ev)
          updateTags(ev)
          $('span.meter').css('display', 'none')
        })
      }
  });



  $('#skip-button').on('click', function(event){
    console.log("WTF")
    skip++
    changeImage(event)
    if (skip == 3){
      $(this).css('opacity', '0.4').off('click')
      alert("You have used your 3 skips!")
    }
  });

  $('#reset-button').on('click', function(ev){
    turn = 0;
    skip = 0;
    $.ajax({
      url: '/votes',
      method: 'DELETE',
      dataType: 'script'
    });

    $('#skip-button').css('opacity', '1');
    $('#skip-button').on('click', function(ev){
      skip++
      if (skip == 3){
        $(this).css('opacity', '0.4').off('click')
        alert("You have used your 3 skips!")
      }
    });
    $('#agg-pics-button').removeClass('enough-votes');
    $('span.meter').css('display', 'block', 'width', '0%');
    updateCuisines(ev);
    updateTags(ev);
    changeImage(ev);
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

  function updateCuisines(ev){
    ev.stopPropagation();
    $.ajax({
      url: '/cuisines',
      method: 'GET',
      dataType: 'script'
    });
  };

  function updateTags(ev){
    ev.stopPropagation();
    $.ajax({
      url: '/tags',
      method: 'GET',
      dataType: 'script'
    });
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


});
