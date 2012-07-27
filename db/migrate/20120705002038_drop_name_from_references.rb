class DropNameFromReferences < ActiveRecord::Migration
def self.up
  remove_column :references, :name
end

def self.down
  add_column :references, :name, :string
end

end