class DropRecordCounties < ActiveRecord::Migration
  def self.up
    drop_table:record_counties
  end
end