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

ActiveRecord::Schema.define(version: 20170707175702) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "slug"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "child_sub_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "descriptions"
    t.string   "slug"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "child_sub_categories", ["category_id"], name: "index_child_sub_categories_on_category_id"
  add_index "child_sub_categories", ["subcategory_id"], name: "index_child_sub_categories_on_subcategory_id"

  create_table "contact_details", force: :cascade do |t|
    t.string   "email"
    t.string   "phone"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contact_details", ["user_id"], name: "index_contact_details_on_user_id"

  create_table "permissions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "permissions", ["role_id"], name: "index_permissions_on_role_id"
  add_index "permissions", ["user_id"], name: "index_permissions_on_user_id"

  create_table "product_categorizations", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.integer  "childsubcategory_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "product_categorizations", ["category_id"], name: "index_product_categorizations_on_category_id"
  add_index "product_categorizations", ["childsubcategory_id"], name: "index_product_categorizations_on_childsubcategory_id"
  add_index "product_categorizations", ["product_id"], name: "index_product_categorizations_on_product_id"
  add_index "product_categorizations", ["subcategory_id"], name: "index_product_categorizations_on_subcategory_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "sku"
    t.text     "description"
    t.float    "original_price"
    t.float    "discount_price"
    t.float    "weight"
    t.integer  "min_order"
    t.integer  "max_order"
    t.boolean  "tax_applied"
    t.text     "terms_condition"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "specifications", ["product_id"], name: "index_specifications_on_product_id"

  create_table "sub_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "slug"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sub_categories", ["category_id"], name: "index_sub_categories_on_category_id"

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "address_id"
    t.integer  "contactdetail_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "user_profiles", ["address_id"], name: "index_user_profiles_on_address_id"
  add_index "user_profiles", ["contactdetail_id"], name: "index_user_profiles_on_contactdetail_id"
  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "business_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
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

  create_table "variations", force: :cascade do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "variations", ["product_id"], name: "index_variations_on_product_id"

end
