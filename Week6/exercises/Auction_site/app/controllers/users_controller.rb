class UsersController < ApplicationController

	before_action :authenticate_user!, only: :show

	def show
		@user = User.find_by(params[:id])
		render 'users/show'
	end

	def home
		@user = current_user
	end
end
