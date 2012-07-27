class AddLocationToPublication < ActiveRecord::Migration
def self.up
  add_column :publications, :location, :string
end

def self.down
  remove_column :publications, :location
end

end