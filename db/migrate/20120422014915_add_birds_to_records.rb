class AddBirdsToRecords < ActiveRecord::Migration
def self.up
  add_column :records, :bird_id, :integer
end

def self.down
  reomve_column :records, :bird_id
end

end