$(document).ready(function(){
	$('.js-search-button').on('click', function(event) {
		event.preventDefault();
		searchArtist();
	})

	$('.js-artist-name').on('click', function() {
		var artist-id = $('')
		displayAlbum();
	})
})

function searchArtist() {
	var searchTerm = $('.js-search').val()

	$.ajax({
		url: "https://api.spotify.com/v1/search?type=artist&query=" + searchTerm,

		success: function(response) {
			var artists = response.artists.items;

			displayResults(artists);
		},

		error: function() {
			console.log("Something went wrong")
		},
	})
}

function displayResults(artists) {
	artists.forEach( function(artist) {
		var html = `
			<li>
			<h2 class="js-artist-name" data-artist="${artist.id}">${artist.name}</h2>
			<img src=${artist.images[2].url}>
			</li>
			`

		$('.artist-list').append(html);
	})
}