class CocktailsController < ApplicationController

    def index
        cocktails = Cocktail.all
        render json: cocktails, include: :ingredients
        end

    def show
        cocktail = Cocktail.find(params[:id])
        render json: cocktail, include: :ingredients
    end

    def update_comments
      
        cocktail = Cocktail.find(params[:id])
        comment = params["comment"]
        cocktail.comments << comment << "|"
        cocktail.save 
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
        cocktail = Cocktail.new(cocktail_params)
        ingredients = params["ingredients"]
        ingredients.each do |ingredient|
            ingredient = Ingredient.find_or_create_by(name: ingredient)
            cocktail.ingredients << ingredient
        end
        cocktail.save
        render json: cocktail, include: :ingredients
    end

    def destroy
        cocktail = Cocktail.find(params[:id])
        cocktail.destroy
    end


    private

    def cocktail_params
        params.require(:cocktail).permit(:likes, :image, :name, :quantity, :bio, ingredients: [], comments: [])
    end

end
