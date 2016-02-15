class IngredientsController < ApplicationController

	def index
		ingredients = Ingredient.all
		render json: ingredients
	end

	def create
		ingredient = Ingredient.create(ingredient_params)
		render json: ingredient
	end

	def show
		ingredient = ingredient_find
		render json: ingredient
	end

	def destroy
		ingredient = ingredient_find
		ingredient.destroy
		render json: ingredient
	end

	def update
		ingredient = ingredient_find
		ingredient.update(ingredient_params)
	end


	private

	def ingredient_params
		params.require(:ingredient).permit(:name, :calories)
	end

	def ingredient_find
		ingredient = Sandwich.Ingredient.find_by(id: params[:id])
		unless ingredient
			render json: {error:"There was no ingredient by that name"},
			status: 404
		end
		return ingredient
	end
end
