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

ActiveRecord::Schema.define(version: 20130407085108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: true do |t|
    t.string   "token"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["user_id"], name: "index_devices_on_user_id"

  create_table "prayers", force: true do |t|
    t.text     "text"
    t.integer  "created_by"
    t.integer  "created_for"
    t.text     "verse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "prayers", ["created_by"], name: "index_prayers_on_created_by"
  add_index "prayers", ["created_for"], name: "index_prayers_on_created_for"

  create_table "reminders", force: true do |t|
    t.string   "weekday"
    t.string   "label"
    t.time     "time"
    t.integer  "user_id"
    t.integer  "prayer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reminders", ["prayer_id"], name: "index_reminders_on_prayer_id"
  add_index "reminders", ["user_id"], name: "index_reminders_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "photo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
