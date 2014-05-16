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

ActiveRecord::Schema.define(version: 20140515180351) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkers", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.decimal  "phone_number"
    t.string   "email"
    t.string   "password"
    t.integer  "bank_account"
    t.integer  "bank_routing_number"
    t.boolean  "storing"
    t.decimal  "ammount_earned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hold_records", force: true do |t|
    t.string   "user_id"
    t.string   "checker_id"
    t.datetime "dropoff_time"
    t.datetime "pick_up_time"
    t.boolean  "hold_complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.string   "password"
    t.integer  "credit_card"
    t.boolean  "stored"
    t.integer  "favorite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
