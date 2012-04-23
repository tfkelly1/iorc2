class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :name, :null => false
      t.string :description

      t.timestamps
    end
  end
end
