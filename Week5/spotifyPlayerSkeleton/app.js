$(document).on("ready", function (){
	$(".search-button").on("click", function(event) {
		event.preventDefault();
		var searchInfo = $(".search-input").val();
		searchSpotify(searchInfo);
	})

	$('.js-button-play').on("click", function(event) {
		if ($('.js-button-play').hasClass('playing')) {

			$('.js-button-play').removeClass('playing')
			$('.js-button-play').addClass('disabled')
			$('.js-player').trigger('pause');

		}
		else{
			$('.js-player').prop('currentTime');
			$('.js-player').on('timeupdate', printTime);
			$('.js-button-play').addClass('playing')
			$('.js-button-play').removeClass('disabled')
			$('.js-player').trigger('play');
		}
	})

	$(".js-author-button-holder").on('click', '.js-artist-button', function(event) {
		event.preventDefault();
		console.log("Link works");
		var artistID = $(event.currentTarget).data('artist-id')
		console.log(artistID)
		searchSpotifyArtist(artistID)
		$('.js-modal').modal("show")
	})


})


//Definitions Here

function searchSpotify(searchInfo) {
	var searchParameters = searchInfo.split(" ").join("+")
	$.ajax({
		url: `https://api.spotify.com/v1/search?type=track&query=${searchParameters}`,

		success: function(response) {
			console.log("Searched for tracks!", response);
			var searchedSong = response.tracks.items[0];
			if (searchedSong === undefined) {
				alert("No tracks!")
				return;
			}
			var allOtherResults = response.tracks.items
			console.log("All tracks",allOtherResults)
			var seeMore = `
				<button class="js-see-more-button"> See More </button>
			`
			$(".js-see-more-button").html(seeMore)
			$(".title").text(searchedSong.name);
			$(".author").text("|");
			searchedSong.artists.forEach(function(artist) {
				var artistLink = `
				<button class="js-artist-button" data-artist-id="${artist.id}"> ${artist.name} </button> |
				`
				$(".author").append(`${artistLink}`);
			})
			$('.js-player').attr('src', searchedSong.preview_url)
			$(".coverImage").attr("src", searchedSong.album.images[0].url)

				$('.js-see-more-button').on('click', function(event) {
					event.preventDefault();
					console.log("Can I see more?")
					console.log(allOtherResults)
					listOtherSongs(allOtherResults)
					$('.js-modal-others').modal("show")
				})
			$(".search-input").val("")
		},

		error: function(response) {
			console.log("Didn't search for any tracks.");
		}
	})
}

function printTime () {
  var current = $('.js-player').prop('currentTime');
  console.debug('Current time: ' + current);
  $('.js-progress-bar').attr('value', current)
}

function searchSpotifyArtist (artistID) {
	$.ajax({
		url: `https://api.spotify.com/v1/artists/${artistID}`,

		success: function(artist) {
			console.log(artist);
			$('.js-artist-modal-name').text(artist.name)
			var info = `
			<p>Followers: ${artist.followers.total}</p>
			<p>Popularity: ${artist.popularity} <p>
			`

			$('.js-artist-modal-body-info').html(info)
			$('.js-artist-modal-body-info').append("Genre's: |")
			if (artist.genres.length === 0) {
				$('.js-artist-modal-body-info').append(` No genre's could be found |`)
			}
			else {
				artist.genres.forEach( function(genre) {
					$('.js-artist-modal-body-info').append(` ${genre} |`)
				})
				
			}
			
		},

		error: function(response) {
			console.log("There was no artist!");
		},
	})
}

function listOtherSongs(songList) {
	$(".js-others-body").empty()
	songList.forEach(function(song) {
		var html = `
		<li><a href="${song.id}" class="${song.id}">${song.name}</a></li>
		`
		$(".js-others-body").append(html)
	})
}