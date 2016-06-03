$(document).ready(function() {

  $(function() {
    $(".modal-trigger").on("click", function() {
        $(".modal").css("display", "inherit");
    });

    $(".modal-fade-screen, .modal-close").on('click', function() {
      $(".modal").css("display", "none");
    });

    $('.modal-inner').on('click', function(e) {
      e.stopPropagation();
    });
  });

});
