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

ActiveRecord::Schema.define(version: 20131115140559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discusses", force: true do |t|
    t.integer  "topic_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "user_id"
  end

  add_index "discusses", ["slug"], name: "index_discusses_on_slug", using: :btree

  create_table "event_type", force: true do |t|
    t.string "type"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "event_date"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "event_type"
  end

  add_index "events", ["slug"], name: "index_events_on_slug", using: :btree

  create_table "forums", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "user_id"
  end

  add_index "forums", ["slug"], name: "index_forums_on_slug", using: :btree

  create_table "jobs", force: true do |t|
    t.string   "job_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.integer  "discuss_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "user_id"
  end

  add_index "posts", ["slug"], name: "index_posts_on_slug", using: :btree

  create_table "rsvps", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.string   "main_job"
    t.string   "second_job"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.integer  "forum_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "user_id"
  end

  add_index "subjects", ["slug"], name: "index_subjects_on_slug", using: :btree

  create_table "topics", force: true do |t|
    t.integer  "subject_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "slug"
    t.string   "user_id"
  end

  add_index "topics", ["slug"], name: "index_topics_on_slug", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.boolean  "admin"
  end

  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
