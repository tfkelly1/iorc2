class DropTitleFromReference < ActiveRecord::Migration[4.2]
def self.up
  remove_column :references, :title_id
end

def self.down
  add_column :references, :title_id, :integer
end

end