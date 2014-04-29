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

ActiveRecord::Schema.define(version: 20140429193129) do

  create_table "clinics", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locality"
    t.string   "zip_postal"
    t.string   "state_prov"
    t.string   "country"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "birth_date"
    t.text     "address"
    t.string   "phone_number"
    t.text     "insurance_provider"
    t.string   "policy_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "zip_postal"
    t.string   "locality"
    t.string   "state_prov"
    t.string   "country"
  end

  create_table "physicians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "state_prov"
    t.string   "gender"
    t.string   "specialty"
    t.integer  "license_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profile_id"
    t.string   "profile_type"
  end

  add_index "users", ["profile_id", "profile_type"], name: "index_users_on_profile_id_and_profile_type"

end
