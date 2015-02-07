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

ActiveRecord::Schema.define(version: 20150207205809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lawfirms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matters", force: :cascade do |t|
    t.integer  "fixed_fee"
    t.integer  "cost"
    t.integer  "expect_hours"
    t.integer  "lawfirm_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "matters", ["lawfirm_id"], name: "index_matters_on_lawfirm_id", using: :btree

  create_table "staffings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "cost_per_hour"
    t.integer  "lawfirm_id"
    t.integer  "matter_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "staffings", ["lawfirm_id"], name: "index_staffings_on_lawfirm_id", using: :btree
  add_index "staffings", ["matter_id"], name: "index_staffings_on_matter_id", using: :btree

  add_foreign_key "matters", "lawfirms"
  add_foreign_key "staffings", "lawfirms"
  add_foreign_key "staffings", "matters"
end
