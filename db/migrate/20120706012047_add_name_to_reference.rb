class AddNameToReference < ActiveRecord::Migration
def self.up
  add_column :references, :name, :string
end

def self.down
  remove_column :references, :name
end

end