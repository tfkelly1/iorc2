class CreateReferences < ActiveRecord::Migration[4.2]
  def change
    create_table :references do |t|
      t.string :name

      t.timestamps
    end
  end
end
