//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
// ----------------------------------------------------------------------------
// MODAL
// ----------------------------------------------------------------------------

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
