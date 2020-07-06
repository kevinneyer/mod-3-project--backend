class CocktailIngredientsController < ApplicationController

    def index
        cocktail_ingredients = CocktailIngredient.all
        render json: cocktail_ingredients, include: [:cocktail, :ingredient], except: [:updated_at, :created_at]
    end

    def show
        cocktail_ingredient = CocktailIngredient.find(params[:id])
        render json: cocktail_ingredient, include: [:cocktail, :ingredient], except: [:updated_at, :created_at]
    end
end
