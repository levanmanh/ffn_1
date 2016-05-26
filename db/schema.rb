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

ActiveRecord::Schema.define(version: 20160525084520) do

  create_table "bets", force: :cascade do |t|
    t.integer  "status"
    t.integer  "match_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bets", ["match_id"], name: "index_bets_on_match_id"
  add_index "bets", ["user_id"], name: "index_bets_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.string   "image"
    t.integer  "posts_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["posts_id"], name: "index_comments_on_posts_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "start_date"
    t.string   "hour"
    t.string   "stadium"
    t.integer  "season_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "matches", ["season_id"], name: "index_matches_on_season_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "date_of_birth"
    t.string   "position"
    t.integer  "jersey_number"
    t.string   "nationality"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "image"
    t.integer  "season_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["match_id"], name: "index_posts_on_match_id"
  add_index "posts", ["season_id"], name: "index_posts_on_season_id"

  create_table "replies", force: :cascade do |t|
    t.string   "content"
    t.string   "image"
    t.integer  "comment_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "replies", ["comment_id"], name: "index_replies_on_comment_id"
  add_index "replies", ["user_id"], name: "index_replies_on_user_id"

  create_table "season_teams", force: :cascade do |t|
    t.integer  "rank"
    t.integer  "team_id"
    t.integer  "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "season_teams", ["season_id"], name: "index_season_teams_on_season_id"
  add_index "season_teams", ["team_id"], name: "index_season_teams_on_team_id"

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "number_of_team"
    t.integer  "number_of_match"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "team_matches", force: :cascade do |t|
    t.integer  "goals"
    t.integer  "points"
    t.integer  "team_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "team_matches", ["match_id"], name: "index_team_matches_on_match_id"
  add_index "team_matches", ["team_id"], name: "index_team_matches_on_team_id"

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "coach"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "role",                   default: 0
    t.integer  "role",                   default: 1,  null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
