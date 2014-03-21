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

ActiveRecord::Schema.define(version: 20140316124939) do

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "practices", force: true do |t|
    t.date     "practicedate"
    t.integer  "group_id"
    t.integer  "lane"
    t.boolean  "compstatus"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strokes", force: true do |t|
    t.string   "stroke"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subsets", force: true do |t|
    t.integer  "swimset_id"
    t.integer  "distance"
    t.integer  "stroke_id"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "varience_id"
  end

  create_table "swimsets", force: true do |t|
    t.integer  "practice_id"
    t.integer  "qty"
    t.integer  "distance"
    t.boolean  "rori"
    t.integer  "rest"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variences", force: true do |t|
    t.string   "varience"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
