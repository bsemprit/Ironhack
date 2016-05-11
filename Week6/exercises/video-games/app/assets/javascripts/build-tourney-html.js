function buildTourneyHtml (tournament) {
  return '\
    <li>\
    <a href="/tournaments/' + tournament.id + '">' + tournament.name + '</a>\
    <button data-hook="tourney-delete" type="submit" name="tournament" value="'+  tournament.id +'">DELETE</button>\
    <button data-hook="player-add" type="submit" name="player">Add Player</button>\
    <form class="player-form hidden" data-hook="player-form" data-tournamentid="'+ tournament.id +'">\
    <label for="players">Players:</label>\
    <select class="players">\
    <option value="Yes">\
    </select>\
    <button data-hook="player-create" type="submit" class="btn btn-success">Add Player </button>\
    </form>\
    <ul class="js-players">\
    </ul>\
    </li>\
  '

}
