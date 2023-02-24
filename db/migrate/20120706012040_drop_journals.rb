class DropJournals < ActiveRecord::Migration[4.2]
  def self.up
    drop_table:titles
  end
end