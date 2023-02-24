class AddNumberToRecord < ActiveRecord::Migration[4.2]
def self.up
  add_column :records, :number, :string
end

def self.down
  remove_column :records, :number
end

end