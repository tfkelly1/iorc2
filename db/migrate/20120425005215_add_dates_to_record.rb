class AddDatesToRecord < ActiveRecord::Migration[4.2]
def self.up
  add_column :records, :start_date, :datetime
  add_column :records, :end_date, :datetime
  add_column :records, :age_gender, :string
  add_column :records, :finders, :string
end

def self.down
  reomve_column :records, :start_date
  reomve_column :records, :end_date
  remove_column :records, :finders
  remove_column :records, :age_gender
end

end