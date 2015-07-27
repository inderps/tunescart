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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150727100801) do

  create_table "albums", force: :cascade do |t|
    t.integer "user_id", limit: 4
  end

  create_table "clostel_signups", force: :cascade do |t|
    t.string  "version",       limit: 255
    t.string  "ip_address",    limit: 255
    t.integer "visited_count", limit: 4,   default: 0
    t.string  "entered_email", limit: 255
    t.string  "hostel_name",   limit: 255
    t.string  "city",          limit: 255
    t.string  "current_app",   limit: 255
    t.string  "query",         limit: 255
  end

  create_table "coupons", force: :cascade do |t|
    t.integer "album_id", limit: 4
    t.string  "code",     limit: 255
    t.boolean "used",     limit: 1,   default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email",           limit: 255
    t.string "name",            limit: 255
    t.string "about_us",        limit: 255
    t.string "fb_link",         limit: 255
    t.string "website",         limit: 255
    t.string "soundcloud_link", limit: 255
  end

end
