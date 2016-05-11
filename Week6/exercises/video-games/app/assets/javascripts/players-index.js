function playerList(event) {
	event.preventDefault();
	var superform = $(event.currentTarget).next()

	var tournamentId = $(superform).data("tournamentid")
	$.ajax({
		url: "/api/tournaments/"+tournamentId+"/players",
		success: function(event){
			console.log("success!");
			$(superform).children(".players").empty()
			event.forEach(function(player){
				html = "<option value='"+player.id +"' >"+ player.name + "</option> "

				$(superform).children(".players").append(html);
			})
		},
		error: function(event){
			console.log("error");
			console.log(event);
		}
	})
}