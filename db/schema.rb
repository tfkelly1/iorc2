# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120626002122) do

  create_table "birds", :force => true do |t|
    t.string   "common"
    t.string   "scientific"
    t.integer  "sequence"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "records", :force => true do |t|
    t.integer  "status_id",  :null => false
    t.integer  "quantity",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "bird_id"
    t.string   "age_gender"
    t.string   "finders"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "details"
    t.string   "location"
    t.string   "number"
  end

  create_table "siglers", :force => true do |t|
    t.integer  "record_id"
    t.integer  "county_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specifics", :force => true do |t|
    t.string   "commonname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "taxons", :force => true do |t|
    t.string   "scientificname"
    t.integer  "specific_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
