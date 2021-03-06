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

ActiveRecord::Schema.define(version: 2018_10_26_141313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attorneys", force: :cascade do |t|
    t.string "name"
    t.integer "licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
  end

  create_table "cities", force: :cascade do |t|
    t.bigint "country_id"
    t.string "city_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "iso"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "complainants", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "birthdate"
    t.string "address"
    t.boolean "migrant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id"
    t.bigint "gender_id"
    t.bigint "disability_id"
    t.decimal "salary"
    t.bigint "native_id"
    t.integer "dni"
    t.index ["country_id"], name: "index_complainants_on_country_id"
    t.index ["disability_id"], name: "index_complainants_on_disability_id"
    t.index ["gender_id"], name: "index_complainants_on_gender_id"
    t.index ["native_id"], name: "index_complainants_on_native_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.bigint "conflict_id"
    t.bigint "complainant_id"
    t.bigint "instittution_id"
    t.bigint "court_id"
    t.boolean "cost_free_attorney"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complainant_id"], name: "index_complaints_on_complainant_id"
    t.index ["conflict_id"], name: "index_complaints_on_conflict_id"
    t.index ["court_id"], name: "index_complaints_on_court_id"
    t.index ["instittution_id"], name: "index_complaints_on_instittution_id"
  end

  create_table "conflicts", force: :cascade do |t|
    t.string "name"
    t.bigint "law_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["law_id"], name: "index_conflicts_on_law_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "iso"
  end

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.bigint "jurisdiction_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jurisdiction_id"], name: "index_courts_on_jurisdiction_id"
  end

  create_table "disabilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instittutions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jurisdictions", force: :cascade do |t|
    t.string "name"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_jurisdictions_on_location_id"
  end

  create_table "law_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "laws", force: :cascade do |t|
    t.string "name"
    t.bigint "law_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["law_category_id"], name: "index_laws_on_law_category_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "cp"
    t.string "name"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "migrants", force: :cascade do |t|
    t.bigint "complainant_id"
    t.bigint "country_id"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_migrants_on_city_id"
    t.index ["complainant_id"], name: "index_migrants_on_complainant_id"
    t.index ["country_id"], name: "index_migrants_on_country_id"
  end

  create_table "natives", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.index ["location_id"], name: "index_natives_on_location_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cities", "countries"
  add_foreign_key "complainants", "countries"
  add_foreign_key "complainants", "disabilities"
  add_foreign_key "complainants", "genders"
  add_foreign_key "complainants", "natives"
  add_foreign_key "complaints", "complainants"
  add_foreign_key "complaints", "conflicts"
  add_foreign_key "complaints", "courts"
  add_foreign_key "complaints", "instittutions"
  add_foreign_key "conflicts", "laws"
  add_foreign_key "courts", "jurisdictions"
  add_foreign_key "jurisdictions", "locations"
  add_foreign_key "laws", "law_categories"
  add_foreign_key "locations", "cities"
  add_foreign_key "migrants", "cities"
  add_foreign_key "migrants", "complainants"
  add_foreign_key "migrants", "countries"
  add_foreign_key "natives", "locations"
end
