class CreateSpecifics < ActiveRecord::Migration[4.2]
  def change
    create_table :specifics do |t|
      t.string :commonname

      t.timestamps
    end
  end
end
