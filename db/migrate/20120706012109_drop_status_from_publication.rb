class DropStatusFromPublication < ActiveRecord::Migration
def self.up
  remove_column :publications, :status_id
end

def self.down
  add_column :publications, :status_id, :string
end

end