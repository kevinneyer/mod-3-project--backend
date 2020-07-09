class Cocktail < ApplicationRecord
    has_many :bars
    has_many :customers, through: :bars
    has_many :cocktail_ingredients
    has_many :ingredients, through: :cocktail_ingredients
    after_create :append_comment 

    def append_comment
      self.comments = " "
    end
end
