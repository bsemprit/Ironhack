class ConcertsController < ApplicationController
  def index
  	today = DateTime.now
  	this_month = today.beginning_of_month..today.end_of_month
  	@concerts_this_month = Concert.where("date > ? and date < ?", today.beginning_of_month, today.end_of_month)
  	@concerts_other_months = Concert.where("date > ?", today.end_of_month)
  end

  def new
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
end
