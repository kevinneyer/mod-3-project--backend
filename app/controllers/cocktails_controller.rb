class CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        # render json: CocktailSerializer.new(cocktails)
        render json: cocktails, include: :ingredients
        end

    def show
        cocktail = Cocktail.find(params[:id])
        # render json: CocktailSerializer.new(cocktail)
        render json: cocktail, include: :ingredients
    end

end
