class CreateCocktailIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktail_ingredients do |t|
      t.integer :ingredient_id
      t.integer :cocktail_id
      
      t.timestamps
    end
  end
end
