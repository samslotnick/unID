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

ActiveRecord::Schema.define(version: 20170529194526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "uid"
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "provider"
    t.string   "email"
    t.string   "nickname"
    t.text     "description"
    t.string   "image"
    t.string   "url"
    t.string   "token"
    t.boolean  "expires",       default: false
    t.datetime "expires_at"
    t.string   "refresh_token"
    t.boolean  "allow_login",   default: false
    t.string   "image_other"
    t.integer  "sort"
    t.integer  "position",                      null: false
    t.index ["position"], name: "index_profiles_on_position", using: :btree
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "name"
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "temp_password"
    t.string   "avatar"
    t.text     "bio"
  end

  add_foreign_key "profiles", "users"
end
