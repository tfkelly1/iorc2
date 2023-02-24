class AddRegionToCounty < ActiveRecord::Migration[4.2]
def self.up
  add_column :counties, :region_id, :integer
end

def self.down
  reomve_column :counties, :region_id
end

end