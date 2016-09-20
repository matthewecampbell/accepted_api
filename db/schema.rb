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

ActiveRecord::Schema.define(version: 20160919214239) do

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
  end

end
