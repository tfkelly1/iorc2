class DropRecordCounties < ActiveRecord::Migration[4.2]
  def self.up
    drop_table:record_counties
  end
end