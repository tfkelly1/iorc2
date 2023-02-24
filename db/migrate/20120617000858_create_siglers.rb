class CreateSiglers < ActiveRecord::Migration[4.2]
  def change
    create_table "siglers", :force => true do |t|
       t.integer "record_id"
       t.integer "county_id"
      t.timestamps
    end
  end
end