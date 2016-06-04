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


  $(".dindr-dates").on('click', function(){


    var userId = $('pic-sets').data('user')

    $.ajax({

      url: '/users/' + userId,
      method: 'patch',
      data: {
        user:{
          down_to_meet: true,
        }
      },
      dataType: 'script'
    });

    var cuisine = $(this).data('cuisinename')

    console.log(cuisine)

    $.ajax({
      url: '/users',
      method: 'get',
      dataType: 'html',
      data: {
          category: cuisine,
        },
      success: function(data){
        $(".result-restaurants-dates").html(data);
        $('html, body').animate({ scrollTop: $(".result-restaurants-dates").offset().top }, 3500)

        console.log(data);
      }
    });
  });


// Create an ajax request to create an invitation

  $("body").on('click', ".dindr-date-info", function(ev){

      console.log("i clicked a picture")


    var date_cuisine = $(ev.target).data('datecuisine')
    var accept_userId = $(ev.target).data('acceptuserid')
    var userId = $(ev.target).data('currentuserid')
    var date = new Date()
    var dates_name = $(ev.target).data('acceptusername')
    var picAnswer = confirm ("Do you want to send an Invitation to " + dates_name + "?")

    console.log(date_cuisine)
    console.log(accept_userId)
    console.log(date)


    console.log(userId)

    if (picAnswer) {
      $.ajax({
        url: '/invitations',
        method: 'post',
        dataType: 'html',
        data: {
          invitation: {
            date_cuisine: date_cuisine,
            send_user_id: userId,
            accept_user_id: accept_userId,
            date: date
          }
        },
        success: function(data){
          $('.dates-pending').html(data)
          $(ev.target).parent().css('display', 'none')
          console.log(data);
        }
      });
    };
  });

// Down to Meet Button Styling
  $('body').on('click', '.toggle-button', function() {

    var useid = $('.toggle-button').data('useid')
    if ($('.toggle-button').hasClass('selected')) {
      $('.toggle-button').removeClass('selected')
      $.ajax({
        url: "/users/" + useid,
        method: "patch",
        data: {
          user: {
            down_to_meet: false
          }
        },
        dataType: 'script'
      })
    }
    else {
      $('.toggle-button').addClass('selected')
      $.ajax({
        url: "/users/" + useid,
        method: "patch",
        data: {
          user: {
            down_to_meet: true
          }
        },
        dataType: 'script'
      })
    };
  });
});



// Renders the map & top restaurants

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
    dataType: 'script',
    data: {
        category_filter: cuisine,
        lat: latitude_value,
        lon: longitude_value
      },
    success: function(data){
      console.log(data);
      $('html, body').animate({ scrollTop: $(".result-restaurants-dates").offset().top }, 3500);
      initMap();

      map.clearOverlays();

      var marker = new google.maps.Marker({
        position: {lat: latitude_value, lng: longitude_value},
        map: map,
        title: 'You!'
      });
      markerArray.push(marker);
      marker.setIcon('http://maps.google.com/mapfiles/ms/icons/blue-dot.png');
      map.panTo(marker.getPosition());


      var rests = $('.each-rest');
      console.log(rests)

      jQuery.each(rests, function(ind, val){

        var restLat = $(val).data('latitude')
        var restLng = $(val).data('longitude')
        var name = $(val).data('name')
        var restMap = {lat: restLat, lng: restLng}
        //
        var restaurant = new google.maps.Marker({
          position: restMap,
          title: name + "!"
        });
        markerArray.push(restaurant);
        restaurant.setMap(map);
    });
    }
  });

}


function failure(err){
  console.log('ERROR(' + err.code + '): ' + err.message);
}


// More infomation button
