class DropCountiesRecords < ActiveRecord::Migration
  def self.up
    drop_table:counties_records
  end
end