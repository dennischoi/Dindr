//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require "burger"

$(document).ready(function() {
// ----------------------------------------------------------------------------
// MODAL
// ----------------------------------------------------------------------------


  $(function() {
    $("#button").on("click", function() {
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
// ----------------------------------------------------------------------------
// NAV
// ----------------------------------------------------------------------------

// $(window).resize(function() {
//   var more = document.getElementById("js-navigation-more");
//   if ($(more).length > 0) {
//     var windowWidth = $(window).width();
//     var moreLeftSideToPageLeftSide = $(more).offset().left;
//     var moreLeftSideToPageRightSide = windowWidth - moreLeftSideToPageLeftSide;
//
//     if (moreLeftSideToPageRightSide < 330) {
//       $("#js-navigation-more .submenu .submenu").removeClass("fly-out-right");
//       $("#js-navigation-more .submenu .submenu").addClass("fly-out-left");
//     }
//
//     if (moreLeftSideToPageRightSide > 330) {
//       $("#js-navigation-more .submenu .submenu").removeClass("fly-out-left");
//       $("#js-navigation-more .submenu .submenu").addClass("fly-out-right");
//     }
//   }
// });
