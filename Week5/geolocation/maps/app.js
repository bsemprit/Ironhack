$(document).ready(function() {
	$('.js-position').on('click', function() {
		if ("geolocation" in navigator) {
			getUserLocation();

		}
		else {
			console.log("No location!!")
		}
	})
})

function getUserLocation() {
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
		//optional 3rd parameter: optionsObj
}

function successCallback(position) {
	var lat = position.coords.latitude
	var long = position.coords.longitude
	displayMap(lat,long)
}

function errorCallback() {
	console.log("Some error")
}

function displayMap(lati, long) {
	var longitude = Number(long)
	var latitude = Number(lati)
  var mapDiv = document.getElementById('maps');
    var map = new google.maps.Map(mapDiv, {
      center: {lat: latitude, lng: longitude},
      zoom: 5
    });
}