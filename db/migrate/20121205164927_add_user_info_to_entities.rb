class AddUserInfoToEntities < ActiveRecord::Migration[4.2]
    def change
      add_column :records, :created_by_id, :string
      add_column :records, :updated_by_id, :string
      
      add_column :publications, :created_by_id, :string
      add_column :publications, :updated_by_id, :string
      
      add_column :birds, :created_by_id, :string
      add_column :birds, :updated_by_id, :string
      
      add_column :roles, :created_by_id, :string
      add_column :roles, :updated_by_id, :string
      
      add_column :regions, :created_by_id, :string
      add_column :regions, :updated_by_id, :string
      
      add_column :statuses, :created_by_id, :string
      add_column :statuses, :updated_by_id, :string
      
      add_column :references, :created_by_id, :string
      add_column :references, :updated_by_id, :string
      
      
    end

end
