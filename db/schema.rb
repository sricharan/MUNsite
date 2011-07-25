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

ActiveRecord::Schema.define(:version => 20110704202241) do

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
    t.string   "email"
    t.string   "mobile"
    t.string   "institution"
    t.string   "country"
    t.string   "city"
    t.string   "type"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
