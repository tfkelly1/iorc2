class CreateBirds < ActiveRecord::Migration[4.2]
  def change
    create_table :birds do |t|
      t.string :common
      t.string :scientific
      t.integer :sequence

      t.timestamps
    end
  end
end
