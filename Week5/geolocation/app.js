$(document).on("ready", function() {

	
	if ("geolocation" in navigator) {

		getUserLocation();
	}

	else {
		//user doesn't have location
	}

	function getUserLocation() {


		navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
		//optional 3rd parameter: optionsObj
	}
})




function successCallback(position) {
	console.log(position)
	// console.log("Latitude", position.coords.latitude);
	// console.log("Longitude",position.coords.longitude);

	$('.js-lat-value').text(position.coords.latitude);
	$('.js-long-value').text(position.coords.longitude);
}

function errorCallback(error) {
	console.log(error)
}