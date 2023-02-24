class AddDates < ActiveRecord::Migration[4.2]
def self.up
  add_column :records, :start_date, :date
  add_column :records, :end_date, :date
end

def self.down
  remove_column :records, :start_date, :date
  remove_column :records, :end_date, :date
end

end