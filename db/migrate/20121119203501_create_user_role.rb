class CreateUserRole < ActiveRecord::Migration
  def change
    create_table "userroles", :force => true do |t|
       t.integer "user_id"
       t.integer "role_id"
      t.timestamps
    end
  end
end

