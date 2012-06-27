class CreateSiglers < ActiveRecord::Migration
  def change
    create_table "siglers", :force => true do |t|
       t.integer "record_id"
       t.integer "county_id"
      t.timestamps
    end
  end
end