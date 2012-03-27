class AddStatusToRecord < ActiveRecord::Migration
  def change
    add_column :records, :status, :string

  end
end
