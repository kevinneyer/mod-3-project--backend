# class CocktailIngredientsSerializer < ActiveModel::Serializer
#     include FastJsonapi::ObjectSerializer
#     attributes :cocktail_id, :ingredient_id
#     belongs_to :ingredient
#     belongs_to :cocktail
#   end