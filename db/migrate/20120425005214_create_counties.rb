class CreateCounties < ActiveRecord::Migration[4.2]
  def change
    create_table :counties do |t|
      t.string :name

      t.timestamps
    end
  end
end
