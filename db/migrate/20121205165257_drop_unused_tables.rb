class DropUnusedTables < ActiveRecord::Migration
  def change
    drop_table:specifics
    drop_table:taxons
  end
end
