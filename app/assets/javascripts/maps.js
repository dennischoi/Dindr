var map;
var markerArray = [];

function initMap(){
    var lat = $('#map').data('lat');
    var lon = $('#map').data('lon');


    var myMap = {lat: lat, lng: lon};
    //
     map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: lat, lng: lon},
      // zoom: 14
      zoom: 14,
      scrollwheel: false,
    });

    google.maps.Map.prototype.clearOverlays = function() {
      for (var i = 0; i < markerArray.length; i++ ) {
        markerArray[i].setMap(null);
      }
      markerArray.length = 0;
    }

}
