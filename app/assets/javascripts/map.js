let map, infoWindow;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 40.707984, lng: -74.006486},
    zoom: 19
  });
infoWindow = new google.maps.InfoWindow;

// Try HTML5 geolocation.
if (navigator.geolocation) {
  navigator.geolocation.getCurrentPosition(function(position) {
    var pos = {
      lat: position.coords.latitude,
      lng: position.coords.longitude
    };

    infoWindow.setPosition(pos);
    infoWindow.setContent('Location found.');
    infoWindow.open(map);
    map.setCenter(pos);
  }, function() {
    handleLocationError(true, infoWindow, map.getCenter());
  });
} else {
  // Browser doesn't support Geolocation
  handleLocationError(false, infoWindow, map.getCenter());
}
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
infoWindow.setPosition(pos);
infoWindow.setContent(browserHasGeolocation ?
                      'Error: The Geolocation service failed.' :
                      'Error: Your browser doesn\'t support geolocation.');
infoWindow.open(map);
}


document.addEventListener('DOMContentLoaded', domContentLoadedEvent => {

  // gets reference to the button element on the page
    let button = document.querySelector('button')
  
    // sets up the click event handler when clicking the button
    
  
      // makes the ujs call
      Rails.ajax({
        type: 'get', 
        url: '/home/foursquare',
        // use the following only if you making an POST, PUT / PATCH, DELETE
        // data: {
        //   id: 6
        // },
        success: (response) => {
          // this is what executes when the request is successful
        //   let users = response.users
        //   let usersUl = document.querySelector("ul#users")
  
        //   users.forEach(user => {
        //     let userLi = document.createElement("li")
  
        //     userLi.id = user.id
        //     userLi.innerHTML = user.name
  
        //     usersUl.appendChild(userLi)
                // console.log(response)
                let p = document.createElement("p")
                let body = document.querySelector("body")
                p = response.body 
                console.log(p.innerHTML)
                body.appendChild(p)

                //Need to loop through venues, grab their info, grab lat/long from nested array then create markers
                
        //   })
        },
        error: (error) => {
          // this is what executes when the request is unsuccessful
          console.log(error)
        }
      })
    })

