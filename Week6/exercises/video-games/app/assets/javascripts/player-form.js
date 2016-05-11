function showPlayerForm(event) {
	playerList(event)
	var superform = $(event.currentTarget).next()
   $(superform).removeClass('hidden')
}