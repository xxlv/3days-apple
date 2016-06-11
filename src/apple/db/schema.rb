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

ActiveRecord::Schema.define(version: 20160611082846) do

  create_table "questions", force: :cascade do |t|
    t.string   "question",      limit: 255
    t.integer  "author_id",     limit: 4
    t.string   "author_name",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "ask_user_id",   limit: 4
    t.string   "ask_user_name", limit: 255
    t.integer  "status",        limit: 4
    t.integer  "is_public",     limit: 4
  end

  create_table "user_questions", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "question_id", limit: 4
    t.integer  "status",      limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "sex",             limit: 4
    t.string   "introduce",       limit: 255
    t.string   "area_introduce",  limit: 255
    t.float    "ask_money",       limit: 24
    t.string   "qcode",           limit: 255
    t.string   "avatar",          limit: 255
    t.string   "email",           limit: 255
    t.string   "password",        limit: 255
    t.string   "username",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

end
