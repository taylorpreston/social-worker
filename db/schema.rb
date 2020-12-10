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

ActiveRecord::Schema.define(version: 2020_12_09_030207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "supervisions", force: :cascade do |t|
    t.string "user_id", null: false
    t.string "supervisor_id", null: false
    t.boolean "signed_by_supervisor"
    t.string "subject_of_supervision"
    t.boolean "group"
    t.datetime "time_in"
    t.datetime "time_out"
    t.date "work_date_start"
    t.date "work_date_end"
    t.string "supervision_content"
    t.string "clincal_content"
    t.integer "clincal_hours"
    t.integer "non_clinical_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "license_type"
    t.string "license_number"
    t.date "license_expiration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
