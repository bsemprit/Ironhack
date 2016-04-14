class ReviewsController < ApplicationController

	before_action :authenticate_user!, except: :index

	def index
		@product = Product.find_by(id: params[:id])
		@reviews = @product.reviews.all
	end

	def create
		@user = User.find_by(id: current_user.id)
		@product = Product.find_by(id: params[:id])
		@review = Review.create(review_params)
	end

	def new
		@user = User.find_by(id: current_user.id)
		@product = Product.find_by(id: params[:id])
		@review = @product.reviews.new
	end

	private

	def review_params
		params.require(:review).permit(:title, :description)
	end

end
