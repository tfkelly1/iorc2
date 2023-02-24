class DropRefrecs < ActiveRecord::Migration[4.2]
  def self.up
    drop_table:refrecs
  end
end