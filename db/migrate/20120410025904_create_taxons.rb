class CreateTaxons < ActiveRecord::Migration
  def change
    create_table :taxons do |t|
      t.string :scientificname
      t.integer :specific_id

      t.timestamps
    end
  end
end
