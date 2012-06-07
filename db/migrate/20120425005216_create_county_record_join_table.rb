class CreateCountyRecordJoinTable < ActiveRecord::Migration
  def self.up
    create_table :counties_records, :id => false do |t|
      t.integer :county_id
      t.integer :record_id
    end
  end
 
  def self.down
    drop_table:counties_records
  end
end