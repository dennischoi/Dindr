
function initMap(){
    var lat = $('#map').data('lat');
    var lon = $('#map').data('lon');


    var myMap = {lat: lat, lng: lon};
    //
    var map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: lat, lng: lon},
      zoom: 14
    });

    var marker = new google.maps.Marker({
      position: myMap,
      map: map,
      title: 'You!'
    });

    // var neary = document.getElementsByClassName(".nearby-restaurants")

    google.maps.event.addDomListener(map, 'click', function(){
      var rests = $('.each-rest')
      console.log(rests)

      jQuery.each(rests, function(ind, val){

        var restLat = $(val).data('latitude')
        var restLng = $(val).data('longitude')
        var restMap = {lat: restLat, lng: restLng}
        //
        var restaurant = new google.maps.Marker({
          position: restMap,
          title: 'You!'
        });
        restaurant.setMap(map);
      });

    });

}
