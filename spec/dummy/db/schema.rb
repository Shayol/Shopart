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

ActiveRecord::Schema.define(version: 20151206202840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shopart_addresses", force: :cascade do |t|
    t.text     "address"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "zipcode"
    t.string   "city"
    t.string   "phone"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopart_credit_cards", force: :cascade do |t|
    t.text     "number"
    t.text     "expiration_year"
    t.text     "expiration_month"
    t.text     "firstname"
    t.text     "lastname"
    t.text     "CVV"
    t.integer  "customer_id"
    t.string   "customer_type"
    t.integer  "order_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "shopart_deliveries", force: :cascade do |t|
    t.string   "description"
    t.decimal  "price",       precision: 9, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "shopart_order_items", force: :cascade do |t|
    t.decimal  "price",        precision: 9, scale: 2, null: false
    t.integer  "quantity",                             null: false
    t.string   "product_type"
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "shopart_orders", force: :cascade do |t|
    t.decimal  "total_price",         default: 0.0,           null: false
    t.datetime "completed_date"
    t.string   "state",               default: "in_progress", null: false
    t.integer  "customer_id"
    t.string   "customer_type"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.integer  "delivery_id"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "sticks", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",      precision: 9, scale: 2, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "stones", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",      precision: 9, scale: 2, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
