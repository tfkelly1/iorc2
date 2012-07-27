class CreateRefrecs < ActiveRecord::Migration
  def change
    create_table "refrecs", :force => true do |t|
       t.integer "record_id"
       t.integer "reference_id"
      t.timestamps
    end
  end
end