# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100719065015) do

  create_table "administrators", :force => true do |t|
    t.string   "login_id"
    t.string   "login_pw"
    t.boolean  "is_active",  :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guestbooks", :force => true do |t|
    t.string   "nickname",   :limit => 50
    t.text     "content"
    t.string   "is_active",                :default => "t"
    t.string   "ip_address", :limit => 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registers", :force => true do |t|
    t.string   "nickname",   :limit => 50
    t.string   "email",      :limit => 75
    t.string   "tel",        :limit => 30
    t.string   "ptt_id",     :limit => 30
    t.string   "ip_address", :limit => 15
    t.boolean  "is_active",                :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
