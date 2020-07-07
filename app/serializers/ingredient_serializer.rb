# class IngredientSerializer < ActiveModel::Serializer
#   include FastJsonapi::ObjectSerializer
#     attributes :name, :amount
#     has_many :cocktail_ingredients
#     has_many :cocktails, through: :cocktail_ingredients
#   end