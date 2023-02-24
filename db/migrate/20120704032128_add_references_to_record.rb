class AddReferencesToRecord < ActiveRecord::Migration[4.2]
def self.up
  add_column :records, :reference_id, :integer
end

def self.down
  reomve_column :records, :reference_id
end

end