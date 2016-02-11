// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
}

PokemonApp.Pokemon.prototype.render = function() {
	console.log("Rendering pokemon: #" + this.id);

	var self = this;
	$.ajax({
		url: "/api/pokemon/" + this.id,
		success: function (response) {
			self.info = response
			console.log(self.info);

			$('.js-pkmn-name').text(self.info.name);
			$('.js-pkmn-number').text(self.info.pkdx_id);
			$('.js-pkmn-height').text(self.info.height);
			$('.js-pkmn-weight').text(self.info.weight);
			$('.js-pkmn-hp').text(self.info.hp);
			$('.js-pkmn-attack').text(self.info.attack);
			$('.js-pkmn-defense').text(self.info.defense);
			$('.js-pkmn-spatck').text(self.info.sp_atk);
			$('.js-pkmn-spdef').text(self.info.sp_def);
			$('.js-pkmn-speed').text(self.info.speed);
			$('.js-pkmn-types').empty();
			self.info.types.forEach( function(type) {
				var type = ` 
					<li>${type.name}</li>
				`
				console.log("hpp")
				$('.js-pkmn-types').append(type);
			})

			
			getPokemonImage(self.info);
			$('.js-pokemon-modal').modal("show");
		},

		error: function(response) {
			alert(`Couldn't get the details of pokemon #${this.id}`);
		},
	})
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondlast = uriSegments.length - 2;
	return uriSegments[secondlast];
}

$(document).on("ready", function() {
	$(".js-show-pokemon").on("click", function(event) {
		var $button = $(event.currentTarget)
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	})
})

function getPokemonImage(pokemonInfo) {
	var imgUrlResource = pokemonInfo.sprites[0].resource_uri

	$.ajax({
		url: `http://pokeapi.co/${imgUrlResource}`,

		success: function(response) {
			imageUrl = response.image
			displayPokemonImage(imageUrl);
			console.log(imageUrl);
		},

		error: function(response) {
			console.log("There is no image!")
		},
	})
}

function displayPokemonImage(imageUrl) {
	var img = `
				<img src="http://pokeapi.co${imageUrl}" class="js-pkmn-image-url">
			`
	$('.js-pkmn-image').html(img)
}
				