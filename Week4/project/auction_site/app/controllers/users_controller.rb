class UsersController < ApplicationController

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path

	end

	def index
		@users = User.all

		if @users.empty?
			render "no_users"
		else
			render "index"
		end
	end

	def show
		@user = User.find_by(id: params[:id])

		if @user
			render "show"
		else
			render "user_not_found"
		end
	end

	def create
		@user = User.create(user_params)

		if @user.save
			link_to user_path(@user)
		else
			render "new"
		end
	end

	def new
		@user = User.new
	end

	private

	def user_params
		params.require(:user).permit(:name, :email)
	end
end
