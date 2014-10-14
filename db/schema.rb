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

ActiveRecord::Schema.define(version: 20141014015826) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "bank",         null: false
    t.string   "account_type", null: false
    t.string   "number",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "bills", force: true do |t|
    t.integer  "debt_id"
    t.decimal  "amount",     precision: 10, scale: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["debt_id"], name: "index_bills_on_debt_id", using: :btree

  create_table "debts", force: true do |t|
    t.integer  "payment_id"
    t.integer  "user_id"
    t.decimal  "amount",     precision: 10, scale: 0, null: false
    t.boolean  "paid"
    t.datetime "paid_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debts", ["payment_id"], name: "index_debts_on_payment_id", using: :btree
  add_index "debts", ["user_id"], name: "index_debts_on_user_id", using: :btree

  create_table "friends", force: true do |t|
    t.integer  "from"
    t.integer  "to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.decimal  "amount",      precision: 10, scale: 0, null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["group_id"], name: "index_payments_on_group_id", using: :btree
  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "user_groups", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id", using: :btree
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
