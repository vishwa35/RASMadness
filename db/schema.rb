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

ActiveRecord::Schema.define(version: 20170720025327) do

  create_table "ats_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bor_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ccr_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chaos_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dd_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drd_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gateway_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gwa_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mania_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "masti_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mayhem_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "r2b2_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rangeelo_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rcr_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rodeo_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "royalty_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sanedo_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "space_city_comps", force: :cascade do |t|
    t.integer "uid", null: false
    t.string "first", null: false
    t.string "second", null: false
    t.string "third", null: false
    t.integer "points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.integer "points"
    t.string "full_name", null: false
    t.string "team_affiliation"
    t.boolean "admin", default: false
    t.boolean "predictions_bool", default: false
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
