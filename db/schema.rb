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

ActiveRecord::Schema.define(version: 20170918154025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "klasse_id"
    t.integer "spec_id"
    t.integer "item_level"
    t.string "faction"
    t.string "armory"
    t.string "server"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expansions", force: :cascade do |t|
    t.string "name"
    t.string "colors", default: [], array: true
    t.integer "release_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "raid_leader_id"
    t.integer "raid_id"
    t.string "difficulty"
    t.integer "max_size"
    t.string "faction"
    t.datetime "go_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.string "css_style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ledgers", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "character_id"
    t.integer "spec_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_ledgers_on_character_id"
    t.index ["group_id"], name: "index_ledgers_on_group_id"
  end

  create_table "raids", force: :cascade do |t|
    t.string "name"
    t.integer "expansion_id"
    t.string "difficulties", default: [], array: true
    t.string "videos", default: [], array: true
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "group_id"
    t.integer "character_id"
    t.string "role"
    t.integer "spec_id"
    t.string "note"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specs", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.integer "klasse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ledgers", "characters"
  add_foreign_key "ledgers", "groups"
end
