class DropRecordCounty < ActiveRecord::Migration
  def self.up
    drop_table:records_counties
  end
end