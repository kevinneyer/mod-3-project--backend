class CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: cocktails, except: [:created_at, :updated_at]
    end

    def show
        cocktail = Cocktail.find(params[:id])
        render json: cocktail, except: [:created_at, :updated_at]
    end

end
