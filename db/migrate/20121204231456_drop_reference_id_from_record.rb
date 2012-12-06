class DropReferenceIdFromRecord < ActiveRecord::Migration

  def change
    remove_column :records, :reference_id
  end
end
