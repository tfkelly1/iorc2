class DropJournals < ActiveRecord::Migration
  def self.up
    drop_table:titles
  end
end