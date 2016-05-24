$(document).on('ready load:page', function(){
  $(".nearby-restaurants").on('click', function(ev){

    if ('geolocation' in navigator){
      navigator.geolocation.getCurrentPosition(function(position){
        success(ev, position);
      }, failure);

    } else {
      alert ("Geolocation not supported");
    }
  });
});


function success(ev, position){
  console.log(position.coords.latitude);
  console.log(position.coords.longitude);

  var userId = $('pic-sets').data('user')

  var cuisine = $(ev.target).data('cuisinelabel')

  var latitude_value = position.coords.latitude
  var longitude_value = position.coords.longitude

  $.ajax({

    url: '/users/' + userId,
    method: 'patch',
    data: {
      user:{
        latitude: latitude_value,
        longitude: longitude_value
      }
    },
    dataType: 'script'
  });

  $.ajax({
    url: '/restaurants',
    method: 'get',
    dataType: 'html',
    data: {
        category_filter: cuisine,
        lat: latitude_value,
        lon: longitude_value
      },
    success: function(data){
      console.log(data);
      $(".result-restaurants").html(data);

      var marker = new google.maps.Marker({
        position: {lat: latitude_value, lng: longitude_value},
        map: map,
        title: 'You!'
      });


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
    }
  });

}


function failure(err){
  console.log('ERROR(' + err.code + '): ' + err.message);
}
