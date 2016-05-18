$(document).on('ready load: page', function(){
  $("#nearby-restaurants").on('click', function(){

    if ('geolocation' in navigator){
      navigator.geolocation.getCurrentPosition(success, failure);
    } else {
      alert ("Geolocation not supported");
    }
  });
});


function success(position){
  console.log(position.coords.latitude);
  console.log(position.coords.longitude);

  // var cuisine = $('#nearby-restaurants').data('cuisinename')

  var latitude_value = position.coords.latitude
  var longitude_value = position.coords.longitude

  $.ajax({
    url: '/restaurants',
    method: 'get',
    dataType: 'html',
    data: {
        // category_filter: cuisine
        lat: latitude_value,
        lon: longitude_value
      },
    success: function(data){
      console.log(data);
    }
  });
}


function failure(err){
  console.log('ERROR(' + err.code + '): ' + err.message);
}
