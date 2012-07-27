class AddBirdsToPublications < ActiveRecord::Migration
def self.up
  add_column :publications, :bird_id, :integer
end

def self.down
  reomve_column :publications, :bird_id
end

end