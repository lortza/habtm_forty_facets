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

ActiveRecord::Schema.define(version: 20170321183031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_products", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activities_products", ["activity_id"], name: "index_activities_products_on_activity_id", using: :btree
  add_index "activities_products", ["product_id"], name: "index_activities_products_on_product_id", using: :btree

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "gender_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "brand_id"
    t.text     "description"
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id", using: :btree
  add_index "products", ["gender_id"], name: "index_products_on_gender_id", using: :btree

  create_table "sml_sizes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variants", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "color"
    t.integer  "sml_size_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "variants", ["product_id"], name: "index_variants_on_product_id", using: :btree
  add_index "variants", ["sml_size_id"], name: "index_variants_on_sml_size_id", using: :btree

  add_foreign_key "activities_products", "activities"
  add_foreign_key "activities_products", "products"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "genders"
  add_foreign_key "variants", "products"
  add_foreign_key "variants", "sml_sizes"
end
