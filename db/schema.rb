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

ActiveRecord::Schema.define(version: 20150722125213) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "births", force: :cascade do |t|
    t.string   "childname",   limit: 255
    t.string   "fathername",  limit: 255
    t.string   "mothername",  limit: 255
    t.string   "bloodgroup",  limit: 255
    t.string   "genotype",    limit: 255
    t.string   "sorigin",     limit: 255
    t.string   "sex",         limit: 255
    t.string   "date",        limit: 255
    t.string   "time",        limit: 255
    t.string   "lga",         limit: 255
    t.string   "sbirth",      limit: 255
    t.string   "nationality", limit: 255
    t.string   "raddress",    limit: 255
    t.string   "occupation",  limit: 255
    t.string   "nmidwife",    limit: 255
    t.string   "mage",        limit: 255
    t.string   "fage",        limit: 255
    t.string   "weight",      limit: 255
    t.string   "dreg",        limit: 255
    t.string   "reg_num",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id",     limit: 4
  end

  create_table "creates", force: :cascade do |t|
    t.string   "index",      limit: 255
    t.string   "show",       limit: 255
    t.string   "new",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.string   "rdate",       limit: 255
    t.string   "dname",       limit: 255
    t.string   "sex",         limit: 255
    t.string   "color",       limit: 255
    t.string   "age",         limit: 255
    t.string   "occupation",  limit: 255
    t.string   "mstatus",     limit: 255
    t.string   "nationality", limit: 255
    t.string   "birthplace",  limit: 255
    t.string   "cdate",       limit: 255
    t.string   "place",       limit: 255
    t.string   "cdeath",      limit: 255
    t.string   "nextkin",     limit: 255
    t.string   "doctor",      limit: 255
    t.string   "cleared",     limit: 255
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "reg_num",     limit: 255
  end

  create_table "homes", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "text",       limit: 255
    t.string   "photo_uid",  limit: 255
    t.string   "photo_name", limit: 255
    t.string   "image_uid",  limit: 255
    t.string   "image_name", limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reg_nos", force: :cascade do |t|
    t.string   "number",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "birth_id",   limit: 4
    t.string   "code",       limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "hospital_name",          limit: 255
    t.string   "hospital_address",       limit: 255
    t.string   "hospital_phone",         limit: 255
    t.string   "hospital_reg_no",        limit: 255
    t.boolean  "admin",                  limit: 1,   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
