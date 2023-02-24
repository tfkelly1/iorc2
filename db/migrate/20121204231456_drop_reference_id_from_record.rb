class DropReferenceIdFromRecord < ActiveRecord::Migration[4.2]

  def change
    remove_column :records, :reference_id
  end
end
