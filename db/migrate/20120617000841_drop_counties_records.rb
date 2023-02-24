class DropCountiesRecords < ActiveRecord::Migration[4.2]
  def self.up
    drop_table:counties_records
  end
end