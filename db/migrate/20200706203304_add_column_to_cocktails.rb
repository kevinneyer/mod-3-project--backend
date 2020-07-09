class AddColumnToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :comments, :string
    add_column :cocktails, :bio, :string
    add_column :cocktails, :image, :string
    add_column :cocktails, :likes, :integer, default: 0
  end
end
