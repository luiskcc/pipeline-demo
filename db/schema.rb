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

ActiveRecord::Schema[7.0].define(version: 2023_05_30_140805) do
  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "country"
    t.string "province"
    t.string "street_address"
    t.string "street_number"
    t.integer "postal_code"
    t.integer "status", default: 0
    t.string "company_name"
    t.string "identity_number"
    t.string "company_email"
    t.string "company_phone"
    t.string "business_area"
    t.string "website"
    t.string "stage", default: "prospecting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
