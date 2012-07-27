class AddFieldsToReferences < ActiveRecord::Migration
def self.up
  add_column :references, :title_id, :integer
  add_column :references, :volume, :string
end

def self.down
  reomve_column :references, :title_id
  reomve_column :references, :volume
end

end