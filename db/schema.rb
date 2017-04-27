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

ActiveRecord::Schema.define(version: 20170427203030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendar_events", force: :cascade do |t|
    t.datetime "date"
    t.string   "time_slot"
    t.string   "weather"
    t.string   "weather_modifier"
    t.text     "events"
    t.string   "event_requirements"
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "confidant_availability_events", force: :cascade do |t|
    t.string   "confidant"
    t.string   "location"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "calendar_event_id"
    t.index ["calendar_event_id"], name: "index_confidant_availability_events_on_calendar_event_id", using: :btree
  end

  create_table "confidants", force: :cascade do |t|
    t.string   "arcana"
    t.string   "name"
    t.datetime "start_date"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_stats", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank2"
    t.integer  "rank3"
    t.integer  "rank4"
    t.integer  "rank5"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
