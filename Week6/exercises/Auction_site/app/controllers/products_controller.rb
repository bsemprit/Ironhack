class ProductsController < ApplicationController

	before_action :authenticate_user!, except: :all_index

	def all_index
		@products = Product.all 

	end

	def product_show
		@user = current_user
		@product = Product.find_by(id: params[:id])
		@reviews = @product.reviews.all
		@review = @product.reviews.new

	end

	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all

	end

	def create
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new(product_params)

		if @product.save
			redirect_to user_products_path(@user)
		else
			render "new"
		end
	end

	def destroy
	end

	def new
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :deadline)
	end
end
