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

ActiveRecord::Schema.define(version: 20161003020011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_price_in_state"
    t.integer  "total_price_out_of_state"
    t.integer  "percent_admitted"
    t.integer  "yield"
    t.integer  "total_applicants"
    t.string   "act_range"
    t.string   "city"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "affiliation"
    t.integer  "six_year_grad_rate"
    t.integer  "total_enrollment"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer  "act_low"
    t.integer  "act_high"
    t.string   "website"
    t.string   "phone_number"
    t.string   "financial_aid_address"
    t.string   "admissions_address"
    t.string   "application_address"
    t.string   "net_price_calculator"
    t.integer  "average_price_after_financial_aid"
    t.integer  "average_price_if_less_than_30000"
    t.integer  "average_price_if_less_than_48000"
    t.integer  "average_price_if_less_than_75000"
    t.integer  "average_price_if_less_than_110000"
    t.integer  "average_price_if_greater_than_110000"
    t.string   "ncaa_membership"
    t.string   "football_team?"
    t.string   "basketball_team?"
    t.string   "baseball_team?"
    t.string   "cross_country_team?"
    t.string   "address"
    t.integer  "zip"
    t.string   "state"
  end

  create_table "favorite_colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "total_price_in_state"
    t.integer  "total_price_out_of_state"
    t.integer  "percent_admitted"
    t.integer  "yield"
    t.integer  "total_applicants"
    t.string   "act_range"
    t.string   "city"
    t.string   "longitude"
    t.string   "latitude"
    t.string   "affiliation"
    t.integer  "six_year_grad_rate"
    t.integer  "total_enrollment"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.integer  "act_low"
    t.integer  "act_high"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_favorite_colleges_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.integer  "sign_in_count",          default: 0
    t.integer  "enrollment_preference"
    t.integer  "act_score"
    t.integer  "in_state_max"
    t.integer  "out_of_state_max"
    t.string   "affiliation_preference"
    t.integer  "grad_rate_preference"
  end

  add_foreign_key "favorite_colleges", "users"
end
