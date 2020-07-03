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

ActiveRecord::Schema.define(version: 20200703000543) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "post"
    t.date "startDate"
    t.date "endDate"
    t.string "grade"
    t.integer "salary"
    t.integer "annualLeave"
    t.string "probationStatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments_staff", id: false, force: :cascade do |t|
    t.integer "department_id"
    t.integer "staff_id"
  end

  create_table "extra_duties", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extra_duties_staff", id: false, force: :cascade do |t|
    t.integer "extra_duty_id"
    t.integer "staff_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff", force: :cascade do |t|
    t.string "name"
    t.date "dateOfBirth"
    t.string "address"
    t.string "postcode"
    t.string "phone"
    t.string "email"
    t.string "jobTitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "extra_duties_id"
    t.bigint "staff_types_id"
    t.bigint "manager_id"
    t.bigint "contracts_id"
    t.index ["contracts_id"], name: "index_staff_on_contracts_id"
    t.index ["extra_duties_id"], name: "index_staff_on_extra_duties_id"
    t.index ["manager_id"], name: "index_staff_on_manager_id"
    t.index ["staff_types_id"], name: "index_staff_on_staff_types_id"
  end

  create_table "staff_staff_types", id: false, force: :cascade do |t|
    t.integer "staff_id"
    t.integer "staff_type_id"
  end

  create_table "staff_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "staff", "contracts", column: "contracts_id"
  add_foreign_key "staff", "extra_duties", column: "extra_duties_id"
  add_foreign_key "staff", "managers"
  add_foreign_key "staff", "staff_types", column: "staff_types_id"
end
