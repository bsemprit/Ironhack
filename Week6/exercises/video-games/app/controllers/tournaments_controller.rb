class TournamentsController < ApplicationController
  def index
  	render(:index)
  end

  def tournament_list
  	tournaments = Tournament.all
  	render json: tournaments
  end

  def create
  	tournament = Tournament.create(tournament_params)
  	unless tournament
	  	render json:{error: "Nope didn't work"},
	  	status: 404
	end
  	render json: tournament, 
  	status: 201
  end

  def destroy
  	tournament = Tournament.find_by(id: params[:id])

  	tournament.delete

  	render json: tournament
  end

  private

  def tournament_params
  	params.require(:tournament).permit(:name)
  end

end
