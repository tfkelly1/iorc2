class CreateRefpubs < ActiveRecord::Migration
  def change
    create_table "refpubs", :force => true do |t|
       t.integer "publication_id"
       t.integer "reference_id"
      t.timestamps
    end
  end
end