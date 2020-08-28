class DropBarsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :bars
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
