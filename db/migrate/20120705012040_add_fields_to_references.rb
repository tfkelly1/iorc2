class AddFieldsToReferences < ActiveRecord::Migration[4.2]
def self.up
  add_column :references, :title_id, :integer
  add_column :references, :volume, :string
end

def self.down
  reomve_column :references, :title_id
  reomve_column :references, :volume
end

end