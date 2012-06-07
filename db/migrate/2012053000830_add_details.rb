class AddDetails < ActiveRecord::Migration
def self.up
  add_column :records, :details, :text
end

def self.down
  remove_column :records, :details
end

end