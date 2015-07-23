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

ActiveRecord::Schema.define(version: 20150720063810) do

  create_table "addresses", force: :cascade do |t|
    t.string   "lane1"
    t.string   "lane2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "c_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "ct_type"
    t.integer  "p_code"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.string   "state"
    t.string   "city"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navigate_searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.string   "o_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "area"
    t.string   "price"
    t.string   "tenant_name"
    t.date     "lease_commence_date"
    t.date     "lease_expiry_date"
    t.string   "lease_tenure"
    t.string   "rent_per_month"
    t.string   "roi"
    t.string   "lockin_period"
    t.integer  "category_id"
    t.integer  "property_type_id"
    t.integer  "ownership_id"
    t.integer  "type_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "c_type"
    t.string   "p_type"
    t.string   "o_type"
    t.string   "desc"
    t.string   "u_type"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "p_code"
    t.date     "p_date"
  end

  create_table "states", force: :cascade do |t|
    t.string   "s_type"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "u_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
