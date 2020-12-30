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

ActiveRecord::Schema.define(version: 2020_12_29_210209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails_alerts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "fullName"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "title"
    t.string "type_vacancy"
    t.text "description_vacancy"
    t.string "name_company"
    t.string "company_website"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.date "vacancy_expired"
    t.boolean "vacancy_filled", default: false
    t.boolean "expired", default: false
    t.string "name_user_publish"
    t.string "contact_information"
    t.string "about_company"
    t.string "tags", default: [], array: true
    t.index ["user_id"], name: "index_vacancies_on_user_id"
  end

  add_foreign_key "vacancies", "users"
end
