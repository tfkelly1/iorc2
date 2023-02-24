class AddFieldsToPublications < ActiveRecord::Migration[4.2]
def self.up
  add_column :publications, :observers, :string
  add_column :publications, :details, :text
end

def self.down
  remove_column :publications, :observers
  remove_column :publications, :details
end

end





