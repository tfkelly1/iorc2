class AddQuantityToRecord < ActiveRecord::Migration
  def change
    add_column :records, :quantity, :string

  end
end
