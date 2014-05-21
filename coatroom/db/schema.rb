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

ActiveRecord::Schema.define(version: 20140519190250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "apt_number"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.float    "longitude"
    t.float    "latitude"
    t.text     "phone_number"
    t.string   "email"
    t.string   "password"
    t.text     "bank_account"
    t.text     "bank_routing_number"
    t.boolean  "active"
    t.boolean  "storing"
    t.decimal  "ammount_earned"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "hold_records", force: true do |t|
    t.string   "user_id"
    t.string   "checker_id"
    t.string   "status"
    t.date     "dropoff_day"
    t.time     "dropoff_time"
    t.date     "pickup_day"
    t.time     "pickup_time"
    t.boolean  "hold_complete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "password"
    t.string   "credit_card"
    t.boolean  "stored"
    t.integer  "favorite"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
