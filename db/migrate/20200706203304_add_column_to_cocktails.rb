class AddColumnToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :comment, :string
    add_column :cocktails, :bio, :string
    add_column :cocktails, :image, :string
  end
end