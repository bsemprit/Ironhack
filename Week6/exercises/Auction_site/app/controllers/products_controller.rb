class ProductsController < ApplicationController

	before_action :authenticate_user!, except: :index
	def index
	end

	def show

	end

	def create
	end

	def destroy
	end

	def new
	end
end
