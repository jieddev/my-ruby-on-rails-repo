# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_03_03_081715) do
  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_date"
    t.datetime "created_at", null: false
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "cars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "make"
    t.string "model"
    t.datetime "updated_at", null: false
    t.integer "year"
  end

  create_table "companies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "specialization"
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "office_id", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_employees_on_office_id"
  end

  create_table "offices", force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.string "location"
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_offices_on_company_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "age"
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "employees", "offices"
  add_foreign_key "offices", "companies"
end
