class Sandwich < ActiveRecord::Base
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
