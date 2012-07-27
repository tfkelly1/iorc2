class DropRefrecs < ActiveRecord::Migration
  def self.up
    drop_table:refrecs
  end
end