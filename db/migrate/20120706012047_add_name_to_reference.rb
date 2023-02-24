class AddNameToReference < ActiveRecord::Migration[4.2]
def self.up
  add_column :references, :name, :string
end

def self.down
  remove_column :references, :name
end

end