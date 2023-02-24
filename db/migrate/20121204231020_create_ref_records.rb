class CreateRefRecords < ActiveRecord::Migration[4.2]
  def change
    create_table "refrecords", :force => true do |t|
      t.integer "record_id"
      t.integer "reference_id"
      t.timestamps
    end
  end

end
