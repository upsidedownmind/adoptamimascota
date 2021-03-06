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

ActiveRecord::Schema.define(:version => 20120302020915) do

  create_table "breeds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "creationDate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.datetime "creationDate"
    t.date     "lostDate"
    t.date     "foundDate"
    t.date     "adoptedDate"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.text     "picture"
    t.string   "pets"
    t.text     "description"
    t.integer  "specie_id"
    t.integer  "user_id"
    t.string   "picture_file_name"
  end

  create_table "profiles", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shelters", :force => true do |t|
    t.string   "name"
    t.datetime "creationDate"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "species", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.boolean  "enabled"
    t.datetime "creationDate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
