class AddUserInfoToCounty < ActiveRecord::Migration
  def change
    add_column :counties, :created_by_id, :string
    add_column :counties, :updated_by_id, :string
  end
end
