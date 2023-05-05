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

ActiveRecord::Schema[7.0].define(version: 2023_05_04_154620) do
  create_table "departments", force: :cascade do |t|
    t.integer "dept_no"
    t.string "dept_name"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_emps", force: :cascade do |t|
    t.integer "emp_no"
    t.string "dept_no"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dept_managers", force: :cascade do |t|
    t.integer "dept_no"
    t.integer "emp_no"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "emp_no"
    t.date "birth_date"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "hire_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "emp_no"
    t.integer "salary"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.integer "emp_no"
    t.string "title"
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
