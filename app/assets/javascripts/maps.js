var map;
var markerArray = [];

function initMap(){
    var lat = $('#map').data('lat');
    var lon = $('#map').data('lon');


    var myMap = {lat: lat, lng: lon};
    //
     map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: lat, lng: lon},
      zoom: 14
    });

    google.maps.Map.prototype.clearOverlays = function() {
      for (var i = 0; i < markerArray.length; i++ ) {
        markerArray[i].setMap(null);
      }
      markerArray.length = 0;
    }

  }

  // function clearOverlays() {
  //   for (var i = 0; i < markersArray.length; i++ ) {
  //     markersArray[i].setMap(null);
  //   }
  //   markersArray.length = 0;
  // };
 // var marker = new google.maps.Marker({
    //   position: myMap,
    //   map: map,
    //   title: 'You!'
    // });
    // marker.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png')


    // var neary = document.getElementsByClassName(".nearby-restaurants")

    // google.maps.event.addDomListener(map, 'click', function(){
    //   var rests = $('.each-rest')
    //   console.log(rests)
    //
    //   jQuery.each(rests, function(ind, val){
    //
    //     var restLat = $(val).data('latitude')
    //     var restLng = $(val).data('longitude')
    //     var restMap = {lat: restLat, lng: restLng}
    //     //
    //     var restaurant = new google.maps.Marker({
    //       position: restMap,
    //       title: 'You!'
    //     });
    //     restaurant.setMap(map);
    //   });
    //
    // });


// function clearOverlays() {
//   for (var i = 0; i < markerArray.length; i++ ) {
//     markerArray[i].setMap(null);
//   }
//   markerArray.length = 0;
// };
