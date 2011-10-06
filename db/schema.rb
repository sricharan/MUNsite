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

ActiveRecord::Schema.define(:version => 20110930204957) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

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
    t.string   "council_preference"
    t.string   "position_preference"
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
