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

ActiveRecord::Schema.define(version: 20151128233903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bombermen", force: :cascade do |t|
    t.text     "lobby_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "user_list",    default: [],              array: true
    t.string   "game_name"
    t.string   "channel_name"
    t.integer  "selected_map", default: 0
  end

  create_table "gamechats", force: :cascade do |t|
    t.text     "lobbyid"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamelobbies", force: :cascade do |t|
    t.text     "lobby_id"
    t.text     "lobby_name"
    t.boolean  "public"
    t.boolean  "game_started"
    t.integer  "user_count"
    t.text     "user_list",    default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "bg_image"
    t.integer  "selected_map", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                            null: false
    t.string   "encrypted_password",     default: "",                            null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                             null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name",                                                           null: false
    t.string   "image",                  default: "/assets/img_thumbnail_0.png"
    t.text     "events",                 default: [],                                         array: true
    t.text     "channels",               default: [],                                         array: true
    t.integer  "high_score",             default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
