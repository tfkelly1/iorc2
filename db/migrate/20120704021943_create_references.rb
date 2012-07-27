class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name

      t.timestamps
    end
  end
end
