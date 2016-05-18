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

  var cuisine = $('#nearby-restaurants').data('cuisinename')

  $.ajax({
    url: '/restaurants',
    method: 'get',
    dataType: 'html',
    data: {
        category_filter: cuisine
      },
    success: function(data){
      console.log(data);
    }
  });
}


function failure(err){
  console.log('ERROR(' + err.code + '): ' + err.message);
}
