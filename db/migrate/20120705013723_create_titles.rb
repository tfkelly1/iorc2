class CreateTitles < ActiveRecord::Migration[4.2]
  def change
    create_table :titles do |t|
      t.string :name
      t.string :authors
      t.string :description

      t.timestamps
    end
  end
end
