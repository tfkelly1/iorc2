class DropUnusedTables < ActiveRecord::Migration[4.2]
  def change
    drop_table:specifics
    drop_table:taxons
  end
end
