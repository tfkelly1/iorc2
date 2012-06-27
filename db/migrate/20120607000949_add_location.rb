class AddLocation < ActiveRecord::Migration
def self.up
  add_column :records, :location, :string
end

def self.down
  remove_column :records, :location
end

end