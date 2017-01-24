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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170124184935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "temp_preferences", force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "coat_min"
    t.index ["user_id"], name: "index_temp_preferences_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zip_codes", force: :cascade do |t|
    t.integer "user_id",                     null: false
    t.integer "zip_code",                    null: false
    t.boolean "default_zip", default: false, null: false
    t.index ["user_id"], name: "index_zip_codes_on_user_id", using: :btree
  end

  add_foreign_key "temp_preferences", "users"
  add_foreign_key "zip_codes", "users"
end
