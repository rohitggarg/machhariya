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

ActiveRecord::Schema.define(version: 20140611110705) do

  create_table "rss_feed_subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "rss_feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rss_feeds", force: true do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_sites", force: true do |t|
    t.string   "name"
    t.string   "api_token"
    t.string   "user_identifier"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "gcm_key"
    t.string   "apns_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
