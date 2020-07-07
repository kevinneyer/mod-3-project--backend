class CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: cocktails, include: :ingredients
        end

    def show
        cocktail = Cocktail.find(params[:id])
        render json: cocktail, include: :ingredients
    end

end
