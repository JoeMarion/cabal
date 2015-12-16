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

ActiveRecord::Schema.define(version: 20151216042506) do

  create_table "announcements", force: :cascade do |t|
    t.integer "user_id"
    t.string  "title"
    t.text    "content"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.text    "content"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id"
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id"

  create_table "messages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "name"
  end

  create_table "networks_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "network_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "title"
    t.text    "content"
  end

  create_table "url_feeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "admin",           default: false, null: false
    t.integer "network_id"
    t.string  "username"
    t.string  "email",                           null: false
    t.string  "fname",                           null: false
    t.string  "lname",                           null: false
    t.string  "phone"
    t.date    "birthdate"
    t.string  "address"
    t.text    "about"
    t.integer "post_id"
    t.integer "comment_id"
    t.integer "announcement_id"
    t.integer "url_id"
    t.string  "password_hash"
  end

end
