// ----------------------------------------------------------------------------
// BURGER NAV
// ----------------------------------------------------------------------------

$(document).on('ready page:load', function() {
  console.log('document loaded');
  var count = 0;
  console.log(count)
  $('.hamburger').on('click',function(ev){
    ev.stopPropagation();
    $('.menu-trigger').toggleClass('active');
    if(count % 2 === 0){
      $('#nav-box').css('visibility', 'visible');
    }
    else {
      $('#nav-box').css('visibility', 'hidden');
    }
    count++;
  });

  $('html').click(function(){
    console.log('click')
    if($('.menu-trigger').hasClass('active')){
      $('.menu-trigger').removeClass('active');
      $('.nav-links').css('visibility', 'hidden');
      count++
    }
  });

if(document.getElementById('game-page')!=null){
  $('#nav-3').css('background-color', 'rgba(181, 177, 162, 0)');
  $('#burger').css('top' , '1.2rem');
}

if(document.getElementById('profile-page')!=null){
  $('#nav-3').css('background-color', 'rgba(181, 177, 162, 0)');
  $('#burger').css('top' , '1.2rem');
}

if(document.getElementById('dindr-date-invitations')!=null){
  $('#nav-3').css('background-color', 'rgba(181, 177, 162, 0)');
  $('#burger').css('top' , '1.2rem');
}

if(document.getElementById('results-page')!=null){
  $('#nav-3').css('background-color', 'rgba(181, 177, 162, 0)');
  $('#burger').css('top' , '1.2rem');
}

});
