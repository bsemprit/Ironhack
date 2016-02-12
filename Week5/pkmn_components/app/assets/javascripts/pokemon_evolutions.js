$(document).on("ready", function() {
	$(".js-evolutions-btn").on("click", function(event) {
		var id = $(event.currentTarget).attr('data-pkmn-evoID')
		var pokemonevoinfo = JSON.parse($(event.currentTarget).attr("data-pkmn-evoINFO"))
		console.log(id)
		console.log(pokemonevoinfo)
		var evolutions = new PokemonApp.PokemonEvolutions(id, pokemonevoinfo)
		// var pokemonEvo = new PokemonEvolutions(id, info)
		
		evolutions.render();
	})
})

PokemonApp.PokemonEvolutions = function (id, info) {
	this.id = id;
	this.info = info;
}


PokemonApp.PokemonEvolutions.prototype.render = function () {

	console.log("Rendering evolutions for: #" + this.id)
	console.log(this.evolutions)
	$(".js-ev-list").empty()
	$(".js-evo-name").text(this.info.name)
	this.info.evolutions.forEach(function(evo) {

	$.ajax({
		url: evo.resource_uri,

		success: function(evolutionInfo){
			console.log("Got evolution!", evolutionInfo)

			var html = `
			<li class="js-ev-id-${evolutionInfo.pkdx_id}">${evolutionInfo.name}</li>
			`
			$(".js-ev-list").append(html)
			PokemonApp.PokemonEvolutions.getSprite(evoID,evolutionInfo.sprites[0].resource_uri)
		},
		error: function(response) {
			console.log("nope!")
		}
	})
	})
	$('.js-pokemon-modal').modal("hide");
	$(".js-evolution-modal").modal("show")

}

PokemonApp.PokemonEvolutions.getSprite = function (evoID,uri) {
	$.ajax({
		url: uri,

		success: function(response) {
			console.log("Image received",response)
			
			console.log(evoID)
			$(`.js-ev-id-${evoID}`).append(`<p><img src="http://pokeapi.co/${response.image}"></p>`)
		},

		error: function() {
			console.log("No evolutions!")
		}
	})
}

