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

ActiveRecord::Schema.define(version: 20150726085209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string   "equipment_name"
    t.string   "equipment_type"
    t.string   "plate_number"
    t.integer  "quantity"
    t.integer  "project_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "equipment", ["project_id"], name: "index_equipment_on_project_id", using: :btree

  create_table "manpowers", force: :cascade do |t|
    t.string   "project_engineer"
    t.string   "materials_engineer"
    t.string   "project_foreman"
    t.integer  "project_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "manpowers", ["project_id"], name: "index_manpowers_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "project_id_number"
    t.string   "project_name"
    t.string   "location"
    t.string   "implementing_office"
    t.date     "date_of_award"
    t.date     "date_of_contract"
    t.date     "date_started"
    t.date     "target_completion"
    t.string   "project_duration"
    t.decimal  "contract_amount"
    t.string   "item_of_works"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "revised_contract_amounts", force: :cascade do |t|
    t.decimal  "amount"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "revised_contract_amounts", ["project_id"], name: "index_revised_contract_amounts_on_project_id", using: :btree

  create_table "time_extensions", force: :cascade do |t|
    t.string   "date_from"
    t.string   "date_to"
    t.string   "number_of_days"
    t.integer  "project_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "time_extensions", ["project_id"], name: "index_time_extensions_on_project_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "equipment", "projects"
  add_foreign_key "manpowers", "projects"
  add_foreign_key "revised_contract_amounts", "projects"
  add_foreign_key "time_extensions", "projects"
end
