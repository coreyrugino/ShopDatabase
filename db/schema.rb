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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180829014316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "timecards", force: :cascade do |t|
    t.datetime "clockin"
    t.datetime "clockout"
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.string   "brand"
    t.string   "kind"
    t.boolean  "mill"
    t.boolean  "lathe"
    t.boolean  "drill"
    t.float    "diameter"
    t.float    "length"
    t.string   "drill_length"
    t.float    "radius"
    t.string   "material"
    t.integer  "teeth"
    t.float    "f_low"
    t.float    "f_high"
    t.float    "f_rough"
    t.float    "f_finish"
    t.float    "fZ_low"
    t.float    "fZ_high"
    t.float    "fZ_rough"
    t.float    "fZ_finish"
    t.integer  "Vc_low"
    t.integer  "Vc_high"
    t.integer  "Vc_rough"
    t.integer  "Vc_finish"
    t.float    "Ap_low"
    t.float    "Ap_high"
    t.boolean  "rough_bit"
    t.boolean  "finish_bit"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "superwizzard_role",      default: false
    t.boolean  "wizzard_role",           default: false
    t.boolean  "user_role",              default: true
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
