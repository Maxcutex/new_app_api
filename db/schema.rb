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

ActiveRecord::Schema.define(version: 2018_10_29_115840) do

  create_table "industries", force: :cascade do |t|
    t.string "industry_name"
    t.string "exchange_code"
    t.string "sync_flag"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "main_sectors", force: :cascade do |t|
    t.string "sector_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_locals", force: :cascade do |t|
    t.string "sec_code"
    t.string "sec_name"
    t.string "exchange_code"
    t.string "asset_class_coce"
    t.string "contact"
    t.string "description"
    t.string "tier_code"
    t.string "par_value"
    t.date "list_date"
    t.decimal "outstanding_shares"
    t.string "grp_code"
    t.string "registrar"
    t.string "address_1"
    t.string "address_2"
    t.string "address_3"
    t.string "state_code"
    t.string "website"
    t.string "email"
    t.string "gsm"
    t.string "land_tel"
    t.string "fax_no"
    t.string "regis_close"
    t.string "year_end"
    t.string "logo"
    t.integer "shares_in_issue"
    t.integer "capitalization"
    t.integer "view_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "industry_id"
    t.integer "sub_sector_id"
    t.index ["industry_id"], name: "index_stock_locals_on_industry_id"
    t.index ["sub_sector_id"], name: "index_stock_locals_on_sub_sector_id"
  end

  create_table "sub_sectors", force: :cascade do |t|
    t.string "sub_sector_name"
    t.integer "main_sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["main_sector_id"], name: "index_sub_sectors_on_main_sector_id"
  end

end
