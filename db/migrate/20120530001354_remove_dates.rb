class RemoveDates < ActiveRecord::Migration[4.2]
def self.up
  remove_column :records, :start_date
  remove_column :records, :end_date
end

def self.down
  add_column :records, :start_date, :datetime
  add_column :records, :end_date, :datetime
end

end