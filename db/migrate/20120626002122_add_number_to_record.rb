class AddNumberToRecord < ActiveRecord::Migration
def self.up
  add_column :records, :number, :string
end

def self.down
  remove_column :records, :number
end

end