class RemoveTaxon < ActiveRecord::Migration[4.2]
def self.up
  remove_column :records, :taxon
end

def self.down
  add_column :records, :taxon, :string
end

end