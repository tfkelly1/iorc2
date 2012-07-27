class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.string :authors
      t.string :description

      t.timestamps
    end
  end
end
