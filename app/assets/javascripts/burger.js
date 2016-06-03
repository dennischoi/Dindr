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
      $('#nav-box').css('visibility', 'hidden');
      count++
    }

  });


  // $('#nav-box').click(function(ev){
  //   ev.stopPropagation();
  // })

  // ( function () {
  //       $('.hamburger').on('click', function() {
  //           $('.menu-trigger').toggleClass('active');
  //           $('#nav-box').css('visibility', 'visible');
  //       });
  //   }.call(this));
  //
  //   ( function () {
  //     $('.hamburger').on('click', function() {
  //       $('.menu-trigger').removeClass('active');
  //       $('#nav-box').css('visibility', 'hidden');
  //     });
  //   }.call(this));
});

// Make the burger disappear and the new nav appear:

$(window).on('scroll', function() {
    console.log($(this).scrollTop());
    if ($(this).scrollTop() > 850 && $('#nav-2').css('opacity') == 0 ) {
        $('#nav-2').animate({opacity : 1}, 'slow');
        $('.navigation').animate({opacity: 0}, 'fast');
    }

    else if ($(this).scrollTop() < 850 && $('#nav-2').css('opacity') == 1 ) {
        $('#nav-2').animate({opacity : 0}, 'fast');
        $('.navigation').animate({opacity: 1}, 'fast');
    }
});
