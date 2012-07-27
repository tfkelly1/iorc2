class AddReferencesToRecord < ActiveRecord::Migration
def self.up
  add_column :records, :reference_id, :integer
end

def self.down
  reomve_column :records, :reference_id
end

end