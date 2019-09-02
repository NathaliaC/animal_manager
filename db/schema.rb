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

ActiveRecord::Schema.define(version: 20190901201152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animal_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.decimal  "monthly_cost"
    t.integer  "animal_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["animal_type_id"], name: "index_animals_on_animal_type_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "document"
    t.date     "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_animals", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_person_animals_on_animal_id", using: :btree
    t.index ["person_id"], name: "index_person_animals_on_person_id", using: :btree
  end

  add_foreign_key "animals", "animal_types"
  add_foreign_key "person_animals", "animals"
  add_foreign_key "person_animals", "people"
end
