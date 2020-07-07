class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all
        # render json: CocktailSerializer.new(ingredients)
        render json: ingredients
        # except: [:created_at, :updated_at]
    end

    def show
        ingredient = Ingredient.find(params[:id])
        # render json: CocktailSerializer.new(ingredient)
        render json: ingredient
    end
end
