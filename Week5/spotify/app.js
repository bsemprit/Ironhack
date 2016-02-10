$(document).ready(function(){
	$('.js-search-button').on('click', function() {
		searchArtist();
	})
	
	$('.artist-list').on('click','.js-artist-name', function(event) {
		$('.js-album-list').empty()
		console.log('clicked')
		console.log($('.js-artist-name').length)
		var artistID = $(event.currentTarget).data('artist-id')
		var artistName = $(event.currentTarget).text()
		artistName = artistName.trim()	
		console.log(artistName)
		
		$.ajax({
		url: `https://api.spotify.com/v1/artists/${artistID}/albums`,

		success: function(albums) {
			console.log(albums)
			console.log(artistName)
			displayAlbum(albums.items, artistName);
		},

		error: function() {
			console.log("Something went wrong")
		},
		})
	
	$('.js-album-list').on('click','.js-album-image', function(event) {
		console.log('clicked album')
		$('.js-album-modal').modal('hide')
		
		

		var albumID = $(event.currentTarget).data('album-id')
		var albumName = $(event.currentTarget).data('album-name')
		albumName = albumName.trim()
		console.log(albumName)

		$.ajax({
			url: `https://api.spotify.com/v1/albums/${albumID}/tracks`,

			success: function(response) {
				console.log("Success", response)
				displayTracks(response, albumName)
			},

			error: function(response) {
				console.log(response)
			}

		})
	})
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
		// console.log(artists)
		var html = `
			<li>
			<button class="js-artist-name" data-artist-id="${artist.id}">${artist.name}</button>
			<br>
			<img src=${artist.images[2].url}>
			</li>
			`

		$('.artist-list').append(html);
		console.log($('.js-artist-name').length)
	})


}



function displayAlbum(albumList, artistName) {
	var name = `
		<h4 class="js-artist-modal-name">${artistName}</h4>
	`
	$('.js-artist-modal-name').html(name)

	albumList.forEach(function(album) {
		var html = `
		<li><input type="image" class="js-album-image" data-album-id="${album.id}" data-album-name="${album.name}" src="${album.images[1].url}"></li>
		`
	$('.js-album-list').append(html)
	})
	$('.js-album-modal').modal('show')
}

function displayTracks(response, albumName) {
	var name = `
	<h4 class="js-album-modal-name">${albumName}</h4>
	`
	$('.js-album-modal-name').html(name)

	var tracks = response.items
	console.log("Track stuff",tracks)
	tracks.forEach( function(track) {
		var trackName = `
			<li><a href="${track.preview_url}">${track.name}</a></li>
		`
		$('.js-track-list').append(trackName)
	})

	$('.js-track-modal').modal('show')
}