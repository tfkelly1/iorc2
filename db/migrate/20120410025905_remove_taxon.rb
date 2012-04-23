class RemoveTaxon < ActiveRecord::Migration
def self.up
  remove_column :records, :taxon
end

def self.down
  add_column :records, :taxon, :string
end

end