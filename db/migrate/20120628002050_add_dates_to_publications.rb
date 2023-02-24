class AddDatesToPublications < ActiveRecord::Migration[4.2]
def self.up
  add_column :publications, :start_date, :date
  add_column :publications, :end_date, :date
end

def self.down
  remove_column :publications, :start_date, :date
  remove_column :publications, :end_date, :date
end

end