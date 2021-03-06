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

ActiveRecord::Schema.define(:version => 20090408020700) do

  create_table "environments", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.string   "uri"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unittests", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "propurl"
    t.text     "testurl"
    t.string   "basehref"
    t.string   "framework"
    t.boolean  "hinav"
    t.boolean  "treecrumb"
    t.boolean  "titles"
    t.boolean  "sectiontitle"
    t.boolean  "backpack"
    t.boolean  "popup"
    t.string   "rrptlcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
