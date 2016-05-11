// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=player-add]', showPlayerForm)
$('.ctrl-tournaments.actn-index').on('click', '[data-hook~=player-create]', addPlayer)


function addPlayer(event){
	event.preventDefault();
	playerCreateForm = $(event.currentTarget).parent()
	player_name = $(playerCreateForm).find(".players option:selected").html()
	$(playerCreateForm).addClass('hidden')
	player_html = "<li> "+ player_name +"</li>"
	$(playerCreateForm).next().append(player_html)
}