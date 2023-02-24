class CreateCountypubs < ActiveRecord::Migration[4.2]
  def change
    create_table "countypubs", :force => true do |t|
       t.integer "publication_id"
       t.integer "county_id"
      t.timestamps
    end
  end
end