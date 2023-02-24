class AddBirdsToPublications < ActiveRecord::Migration[4.2]
def self.up
  add_column :publications, :bird_id, :integer
end

def self.down
  reomve_column :publications, :bird_id
end

end