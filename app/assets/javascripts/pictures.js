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
});
