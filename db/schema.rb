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

ActiveRecord::Schema.define(version: 2020_08_03_013244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "organizations", force: :cascade do |t|
    t.text "display_name"
    t.text "legal_name"
    t.string "url"
    t.string "department"
    t.string "street_address"
    t.string "city"
    t.string "neighbourhood"
    t.string "postal_code"
    t.string "region"
    t.string "country"
    t.boolean "requires_identification"
    t.text "operating_countries"
    t.string "custom_identifier"
    t.text "identifiers"
    t.string "generic_url"
    t.string "generic_email"
    t.text "generic_note"
    t.string "access_url"
    t.string "access_email"
    t.text "access_note"
    t.string "deletion_url"
    t.string "deletion_email"
    t.text "deletion_note"
    t.string "portability_url"
    t.string "portability_email"
    t.text "portability_note"
    t.string "correction_url"
    t.string "correction_email"
    t.text "correction_note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "author_name"
    t.string "author_auth"
    t.string "industry"
  end

end
