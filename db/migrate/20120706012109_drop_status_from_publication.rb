class DropStatusFromPublication < ActiveRecord::Migration[4.2]
def self.up
  remove_column :publications, :status_id
end

def self.down
  add_column :publications, :status_id, :string
end

end