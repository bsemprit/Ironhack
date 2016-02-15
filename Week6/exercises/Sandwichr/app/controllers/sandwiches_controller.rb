class SandwichesController < ApplicationController

	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = sandwich_find
		render json: sandwich
	end

	def update
		sandwich = sandwich_find
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = sandwich_find
		sandwich.destroy
		render json: sandwich
	end

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end


	def sandwich_find
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"},
			status: 404
			return
		end
		return sandwich
	end
end
