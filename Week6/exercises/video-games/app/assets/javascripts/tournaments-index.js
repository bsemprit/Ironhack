function tournamentsIndex () {
  var request = $.get('/api/tournaments.json')
  request.fail(showError)
  request.done(showTournaments)

  var $tourneySection = $('.js-tourney-section')

  function showError (error) {
    console.error('Error fetching tournament list.', '\n' + error.responseText)
    var message = 'There was a problem fetching the list of tournaments.'
    $tourneySection.append(buildErrorHtml(message))
  }

  function showTournaments (tournaments) {
    var html

    if (tournaments.length === 0) {
      html = buildErrorHtml('Looks like there aren\'t any tournaments yet.')
    } else {
      html = buildTourneyListHtml(tournaments)
    }

    $tourneySection.append(html)

    $('[data-hook~=tourney-add]').removeClass('hidden')
  }
}

function deleteTournament(event) {
  event.preventDefault();
  tournamentId = $(event.currentTarget).val()
  console.log(tournamentId)

  var request = $.ajax({
        url: '/api/tournaments',
        type: 'DELETE',
        data: {id: tournamentId},
        success: function(response){
          console.log("This should work")
          console.log(response)

        },
        error: function(){
          console.log("Error again")
        }
      });
  
}
