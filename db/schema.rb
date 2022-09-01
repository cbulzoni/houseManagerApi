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

ActiveRecord::Schema.define(version: 2022_09_01_143411) do

  create_table "appliances", force: :cascade do |t|
    t.string "appliance_type"
    t.string "category"
    t.date "last_serviced"
    t.string "make"
    t.string "model"
    t.text "notes"
    t.date "service_due"
    t.integer "year"
    t.integer "contact_id"
    t.integer "house_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_appliances_on_contact_id"
    t.index ["house_id"], name: "index_appliances_on_house_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "company_name"
    t.string "contact_name"
    t.string "contact_type"
    t.string "email"
    t.string "phone"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_contacts_on_owner_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "city"
    t.date "purchase_date"
    t.string "state"
    t.string "street_address"
    t.string "zip_code"
    t.integer "owner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_houses_on_owner_id"
  end

  create_table "projects", force: :cascade do |t|
    t.date "date_completed"
    t.date "date_started"
    t.text "description"
    t.float "estimated_cost"
    t.text "notes"
    t.string "priority"
    t.string "status"
    t.integer "contact_id"
    t.string "house"
    t.string "references"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contact_id"], name: "index_projects_on_contact_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appliances", "contacts"
  add_foreign_key "appliances", "houses"
  add_foreign_key "contacts", "owners"
  add_foreign_key "houses", "owners"
  add_foreign_key "projects", "contacts"
end
