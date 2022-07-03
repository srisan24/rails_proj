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

ActiveRecord::Schema[7.0].define(version: 2022_07_03_133922) do
  create_table "book_racks", charset: "latin1", force: :cascade do |t|
    t.bigint "book_id"
    t.integer "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "fk_rails_966bbcf6f5"
  end

  create_table "books", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "book_rack_id"
  end

  create_table "libraries", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations_zones", id: false, charset: "latin1", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "zone_id", null: false
    t.index ["location_id", "zone_id"], name: "index_locations_zones_on_location_id_and_zone_id"
    t.index ["zone_id", "location_id"], name: "index_locations_zones_on_zone_id_and_location_id"
  end

  create_table "users", charset: "latin1", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zones", charset: "latin1", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_racks", "books"
end
