class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :taxon
      t.string :site
      t.string :status
      t.integer :quantity

      t.timestamps
    end
  end
end
