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

ActiveRecord::Schema.define(version: 20160308160831) do

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.time     "available_time"
    t.string   "available_days"
    t.string   "neighborhood"
    t.boolean  "wheel_chair_accessible",   default: true
    t.boolean  "willing_to_carpool",       default: true
    t.integer  "assistance_comfort_level"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.boolean  "avilable_monday"
    t.boolean  "avilable_tuesday"
    t.boolean  "avilable_wednesday"
    t.boolean  "avilable_thursday"
    t.boolean  "avilable_friday"
    t.boolean  "avilable_saturday"
    t.boolean  "avilable_sunday"
    t.time     "avilable_time_monday"
    t.time     "avilable_time_tuesday"
    t.time     "avilable_time_wednesday"
    t.time     "avilable_time_thurday"
    t.time     "avilable_time_friday"
    t.time     "avilable_time_sauterday"
    t.time     "avilable_time_sunday"
    t.boolean  "available_monday"
    t.boolean  "available_tuesday"
    t.boolean  "available_wednesday"
    t.boolean  "available_thursday"
    t.boolean  "available_friday"
    t.boolean  "available_saturday"
    t.boolean  "available_sunday"
    t.time     "available_time_monday",    default: '2000-01-01 00:00:00'
    t.time     "available_time_tuesday",   default: '2000-01-01 00:00:00'
    t.time     "available_time_wednesday", default: '2000-01-01 00:00:00'
    t.time     "available_time_thursday",  default: '2000-01-01 00:00:00'
    t.time     "available_time_friday",    default: '2000-01-01 00:00:00'
    t.time     "available_time_sauterday", default: '2000-01-01 00:00:00'
    t.time     "available_time_sunday",    default: '2000-01-01 00:00:00'
  end

  create_table "facilities", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "county"
    t.string   "city"
    t.string   "zip_code"
    t.integer  "beds"
    t.string   "telephone"
    t.string   "facility_type"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_no"
    t.string   "home_address"
    t.string   "facility_address"
    t.time     "pickup_time"
    t.string   "days_of_week"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.string   "invitation_token"
  end

end
