class CreateRecords < ActiveRecord::Migration[4.2]
  def change
    create_table :records do |t|
      t.string :taxon, :null=>false
      t.integer :status_id, :null=>false
      t.integer :quantity, :null=>false

      t.timestamps
    end
  end
end
