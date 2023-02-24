class DropRecordCounty < ActiveRecord::Migration[4.2]
  def self.up
    drop_table:records_counties
  end
end