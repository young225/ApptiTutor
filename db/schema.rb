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

ActiveRecord::Schema.define(version: 20151016064553) do

  create_table "courses", force: :cascade do |t|
    t.string   "subject"
    t.string   "course_Num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "One"
    t.string   "AAC"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userlogins", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "isTutor"
    t.boolean  "recieveReminders"
    t.string   "profilePicture"
    t.string   "passwordRecoverQuestion1"
    t.string   "passwordRecoverQuestion2"
    t.string   "passwordRecoverAnswer1"
    t.string   "passwordRecoverAnswer2"
    t.boolean  "isStudent"
    t.string   "aboutMe"
    t.string   "gender"
  end

  add_index "userlogins", ["email"], name: "index_userlogins_on_email", unique: true
  add_index "userlogins", ["reset_password_token"], name: "index_userlogins_on_reset_password_token", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.boolean  "isTutor"
    t.boolean  "recieveReminders"
    t.string   "profilePicture"
    t.string   "passwordRecoverQuestion1"
    t.string   "passwordRecoverQuestion2"
    t.string   "passwordRecoverAnswer1"
    t.string   "passwordRecoverAnswer2"
    t.boolean  "isStudent"
    t.string   "aboutMe"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
