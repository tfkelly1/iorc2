class AddUserInfoToUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :created_by_id, :string
    add_column :users, :updated_by_id, :string
  end
end
