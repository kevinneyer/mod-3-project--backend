class IngredientsController < ApplicationController

    def index
        ingredients = Ingredient.all
        render json: ingredients, except: [:created_at, :updated_at]
    end

    def show
        ingredient = Ingredient.find(params[:id])
        render json: ingredient, except: [:created_at, :updated_at]
    end
end
