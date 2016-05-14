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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160514185916) do
=======
ActiveRecord::Schema.define(version: 20160513223843) do

  create_table "api_objects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_objects", force: :cascade do |t|
    t.string   "location",   null: false
    t.datetime "date",       null: false
    t.float    "aqi",        null: false
    t.string   "type",       null: false
    t.string   "pollutant"
    t.string   "effects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
>>>>>>> old modified files prior to schema redesign, updated gemfile to include foundation, normalize and css for registration page

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",        null: false
    t.integer  "data_object_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "favorites", ["data_object_id"], name: "index_favorites_on_data_object_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

<<<<<<< HEAD
  create_table "global_data_objects", force: :cascade do |t|
    t.string   "country_name",                   null: false
    t.datetime "datetime",                       null: false
    t.float    "breezometer_aqi",                null: false
    t.string   "dominant_pollutant_description", null: false
    t.string   "breezometer_description",        null: false
    t.string   "dominant_pollutant_text",        null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "local_data_objects", force: :cascade do |t|
    t.float    "sensor_output", null: false
    t.integer  "user_id",       null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
=======
  create_table "pi_objects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> old modified files prior to schema redesign, updated gemfile to include foundation, normalize and css for registration page
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "password_digest", null: false
    t.string   "email",           null: false
    t.string   "phone",           null: false
    t.string   "location",        null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
