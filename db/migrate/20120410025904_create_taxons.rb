class CreateTaxons < ActiveRecord::Migration[4.2]
  def change
    create_table :taxons do |t|
      t.string :scientificname
      t.integer :specific_id

      t.timestamps
    end
  end
end
