# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20150210170505) do

  create_table "algorithms", :force => true do |t|
    t.integer  "map_id"
    t.integer  "form_source"
    t.integer  "form_target"
    t.float    "form_autonomy"
    t.float    "form_cost"
    t.float    "form_total"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "maps", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routes", :force => true do |t|
    t.integer  "map_id"
    t.string   "source"
    t.string   "target"
    t.float    "distance"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
