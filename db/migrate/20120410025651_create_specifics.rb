class CreateSpecifics < ActiveRecord::Migration
  def change
    create_table :specifics do |t|
      t.string :commonname

      t.timestamps
    end
  end
end
