# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2012_12_05_165257) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "birds", id: :serial, force: :cascade do |t|
    t.string "common", limit: 255
    t.string "scientific", limit: 255
    t.integer "sequence"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "counties", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "region_id"
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "countypubs", id: :serial, force: :cascade do |t|
    t.integer "publication_id"
    t.integer "county_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "publications", id: :serial, force: :cascade do |t|
    t.integer "quantity", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "bird_id"
    t.date "start_date"
    t.date "end_date"
    t.string "observers", limit: 255
    t.text "details"
    t.string "location", limit: 255
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "records", id: :serial, force: :cascade do |t|
    t.integer "status_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "bird_id"
    t.string "age_gender", limit: 255
    t.string "observers", limit: 255
    t.date "start_date"
    t.date "end_date"
    t.text "details"
    t.string "location", limit: 255
    t.string "number", limit: 255
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "references", id: :serial, force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "volume", limit: 255
    t.string "name", limit: 255
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "refpubs", id: :serial, force: :cascade do |t|
    t.integer "publication_id"
    t.integer "reference_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "refrecords", id: :serial, force: :cascade do |t|
    t.integer "record_id"
    t.integer "reference_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "regions", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "siglers", id: :serial, force: :cascade do |t|
    t.integer "record_id"
    t.integer "county_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "statuses", id: :serial, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "description", limit: 255
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
  end

  create_table "userroles", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.integer "failed_attempts", default: 0
    t.string "unlock_token", limit: 255
    t.datetime "locked_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "created_by_id", limit: 255
    t.string "updated_by_id", limit: 255
    t.string "name", limit: 255
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
