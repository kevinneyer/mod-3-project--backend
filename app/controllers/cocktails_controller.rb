class CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: cocktails, include: :ingredients
        end

    def show
        cocktail = Cocktail.find(params[:id])
        render json: cocktail, include: :ingredients
    end

    def update
        cocktail = Cocktail.find(params[:id])
        cocktail.update(cocktail_params)
        render json: cocktail, include: :ingredients
    end

    def new
        cocktail = Cocktail.new
        render json: cocktail, include: :ingredients
    end

    def create
        cocktail = Cocktail.create(cocktail_params)
        render json: cocktail, include: :ingredients
    end

    private

    def cocktail_params
        params.require(:cocktail).permit(:likes, :name, :ingredients, :comment, :quantity, :bio)
    end

end
