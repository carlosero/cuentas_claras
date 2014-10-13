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

ActiveRecord::Schema.define(version: 20141013002616) do

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "bank"
    t.string   "account_type"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "bills", force: true do |t|
    t.integer  "debt_id"
    t.decimal  "amount",     precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["debt_id"], name: "index_bills_on_debt_id", using: :btree

  create_table "debts", force: true do |t|
    t.integer  "payment_id"
    t.integer  "user_id"
    t.decimal  "amount",     precision: 10, scale: 0
    t.boolean  "paid"
    t.datetime "paid_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "debts", ["payment_id"], name: "index_debts_on_payment_id", using: :btree
  add_index "debts", ["user_id"], name: "index_debts_on_user_id", using: :btree

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.integer  "user_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.decimal  "amount",      precision: 10, scale: 0
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
    t.string   "name"
    t.string   "mail"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
