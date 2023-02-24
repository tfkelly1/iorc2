class CreatePublications < ActiveRecord::Migration[4.2]
  def change
    create_table :publications do |t|
      t.integer :status_id, :null=>false
      t.integer :quantity, :null=>false

      t.timestamps
    end
  end
end