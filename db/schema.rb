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

ActiveRecord::Schema.define(version: 20160131103819) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "bookings", force: :cascade do |t|
    t.datetime "date"
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.integer  "contact_no",      limit: 10
    t.datetime "start_time"
    t.integer  "grounddetail_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "length"
    t.datetime "end_time"
    t.integer  "pitch_id"
  end

  add_index "bookings", ["grounddetail_id"], name: "index_bookings_on_grounddetail_id"

  create_table "grounddetails", force: :cascade do |t|
    t.string   "name"
    t.datetime "working_hours"
    t.string   "address"
    t.string   "contact_no"
    t.string   "email"
    t.integer  "number_of_grounds"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.datetime "end_time"
    t.boolean  "featured_ground"
  end

  create_table "pitches", force: :cascade do |t|
    t.integer  "grounddetail_id"
    t.integer  "booking_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "pitchname"
  end

  add_index "pitches", ["booking_id"], name: "index_pitches_on_booking_id"
  add_index "pitches", ["grounddetail_id"], name: "index_pitches_on_grounddetail_id"

  create_table "prices", force: :cascade do |t|
    t.integer  "mprice"
    t.integer  "aprice"
    t.integer  "eprice"
    t.integer  "wkprice"
    t.integer  "grounddetail_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "prices", ["grounddetail_id"], name: "index_prices_on_grounddetail_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
