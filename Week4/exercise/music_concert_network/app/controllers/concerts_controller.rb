class ConcertsController < ApplicationController
  def index
  	today = DateTime.now
  	this_month = today.beginning_of_month..today.end_of_month
  	@concerts_this_month = Concert.where("date > ? and date < ?", today.beginning_of_month, today.end_of_month)
  	@concerts_other_months = Concert.where("date > ?", today.end_of_month)
  end

  def new
  	@concert = Concert.new
  end

  def show
  	@concert = Concert.find_by(id: params[:id])
  	@comments = @concert.comments.all
  	@comment = @concert.comments.new

  	if @concert
  		render "show"
  	else
  		render "no_concert"
  	end
  end

  def no_concert
  	puts "No concert found"
  end

  def create
  	@concert = Concert.new(concert_params)
  	params[:concert]

  	if concert.save
  		redirect_to concert_path(@concert)
  	else
  		render :new
  	end
  end


  private

  def concert_params
  	params.require(:concert).permit(:artist, :venue, :date, :price, :description, :city)
  end
end

