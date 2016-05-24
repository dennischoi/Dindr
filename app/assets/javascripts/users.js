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

  var cuisine = $(ev.target).data('cuisinename')

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
    }
  });

}


function failure(err){
  console.log('ERROR(' + err.code + '): ' + err.message);
}
