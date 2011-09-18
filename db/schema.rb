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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110917064946) do

  create_table "delegates", :force => true do |t|
    t.integer  "mun_as_delegate_count", :default => 0
    t.integer  "mun_as_exec_count",     :default => 0
    t.string   "committee_1"
    t.string   "country_1_1"
    t.string   "country_1_2"
    t.string   "committee_2"
    t.string   "country_2_1"
    t.string   "country_2_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "executive_boards", :force => true do |t|
    t.string   "eb_mun_1"
    t.string   "eb_mun_2"
    t.string   "eb_mun_3"
    t.string   "eb_mun_4"
    t.string   "eb_mun_5"
    t.string   "eb_year_1"
    t.string   "eb_year_2"
    t.string   "eb_year_3"
    t.string   "eb_year_4"
    t.string   "eb_year_5"
    t.string   "eb_council_1"
    t.string   "eb_council_2"
    t.string   "eb_council_3"
    t.string   "eb_council_4"
    t.string   "eb_council_5"
    t.string   "eb_position_1"
    t.string   "eb_position_2"
    t.string   "eb_position_3"
    t.string   "eb_position_4"
    t.string   "eb_position_5"
    t.text     "eb_experience"
    t.string   "d_mun_1"
    t.string   "d_mun_2"
    t.string   "d_mun_3"
    t.string   "d_mun_4"
    t.string   "d_mun_5"
    t.string   "d_council_1"
    t.string   "d_council_2"
    t.string   "d_council_3"
    t.string   "d_council_4"
    t.string   "d_council_5"
    t.string   "d_country_1"
    t.string   "d_country_2"
    t.string   "d_country_3"
    t.string   "d_country_4"
    t.string   "d_country_5"
    t.string   "d_awards_1"
    t.string   "d_awards_2"
    t.string   "d_awards_3"
    t.string   "d_awards_4"
    t.string   "d_awards_5"
    t.text     "mun_experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "international_presses", :force => true do |t|
    t.integer  "mun_as_press_count", :default => 0
    t.text     "experience"
    t.string   "role"
    t.string   "headline"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "full_name"
    t.string   "gender"
    t.string   "course"
    t.string   "year"
    t.string   "place_of_residence"
    t.string   "mobile"
    t.string   "email"
    t.string   "type"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
