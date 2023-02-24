class AddLocation < ActiveRecord::Migration[4.2]
def self.up
  add_column :records, :location, :string
end

def self.down
  remove_column :records, :location
end

end