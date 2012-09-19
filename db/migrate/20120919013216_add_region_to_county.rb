class AddRegionToCounty < ActiveRecord::Migration
def self.up
  add_column :counties, :region_id, :integer
end

def self.down
  reomve_column :counties, :region_id
end

end