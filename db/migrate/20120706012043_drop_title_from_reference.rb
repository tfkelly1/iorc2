class DropTitleFromReference < ActiveRecord::Migration
def self.up
  remove_column :references, :title_id
end

def self.down
  add_column :references, :title_id, :integer
end

end