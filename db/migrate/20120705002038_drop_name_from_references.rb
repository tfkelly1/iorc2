class DropNameFromReferences < ActiveRecord::Migration[4.2]
def self.up
  remove_column :references, :name
end

def self.down
  add_column :references, :name, :string
end

end