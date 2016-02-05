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
  end
end
