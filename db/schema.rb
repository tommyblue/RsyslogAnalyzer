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

ActiveRecord::Schema.define(version: 20130905122132) do

  create_table "SystemEvents", primary_key: "ID", force: true do |t|
    t.integer  "CustomerID",         limit: 8
    t.datetime "ReceivedAt"
    t.datetime "DeviceReportedTime"
    t.integer  "Facility",           limit: 2
    t.integer  "Priority",           limit: 2
    t.string   "FromHost",           limit: 60
    t.text     "Message"
    t.integer  "NTSeverity"
    t.integer  "Importance"
    t.string   "EventSource",        limit: 60
    t.string   "EventUser",          limit: 60
    t.integer  "EventCategory"
    t.integer  "EventID"
    t.text     "EventBinaryData"
    t.integer  "MaxAvailable"
    t.integer  "CurrUsage"
    t.integer  "MinUsage"
    t.integer  "MaxUsage"
    t.integer  "InfoUnitID"
    t.string   "SysLogTag",          limit: 60
    t.string   "EventLogType",       limit: 60
    t.string   "GenericFileName",    limit: 60
    t.integer  "SystemID"
  end

  create_table "SystemEventsProperties", primary_key: "ID", force: true do |t|
    t.integer "SystemEventID"
    t.string  "ParamName"
    t.text    "ParamValue"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
