# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_10_25_103049) do

  create_table "d_emos", force: :cascade do |t|
  end

  create_table "demos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "date_of_birth"
    t.string "lastname"
    t.date "dob"
    t.integer "age"
    t.string "address"
    t.boolean "right", default: false
    t.string "place"
    t.string "location"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "age"
  end

  create_table "joinuserdemos", force: :cascade do |t|
    t.integer "users_id"
    t.integer "demos_id"
    t.index ["demos_id"], name: "index_joinuserdemos_on_demos_id"
    t.index ["users_id"], name: "index_joinuserdemos_on_users_id"
  end

  create_table "tablestudents", force: :cascade do |t|
    t.string "name", limit: 10, default: "nan"
    t.integer "rollno", default: 0
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "deparment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
