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

ActiveRecord::Schema.define(version: 20160920094853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allotments", force: :cascade do |t|
    t.string   "regno"
    t.integer  "choiceno"
    t.integer  "ccode"
    t.integer  "bcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allotseats", force: :cascade do |t|
    t.integer  "bcode"
    t.integer  "ccode"
    t.integer  "seatallocated"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "branches", force: :cascade do |t|
    t.integer  "bcode"
    t.string   "bname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "choices", force: :cascade do |t|
    t.string   "regno"
    t.integer  "choiceno"
    t.integer  "ccode"
    t.integer  "bcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", force: :cascade do |t|
    t.integer  "ccode"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string "college_code"
    t.string "branch_code"
    t.string "no_of_seats"
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "dob"
    t.string   "gender"
    t.bigint   "phone"
    t.integer  "score"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "regno"
  end

end
