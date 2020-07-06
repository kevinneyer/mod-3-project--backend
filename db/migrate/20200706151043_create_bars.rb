class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.integer :customer_id
      t.integer :cocktail_id

      t.timestamps
    end
  end
end
