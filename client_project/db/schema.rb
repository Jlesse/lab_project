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

ActiveRecord::Schema.define(version: 20151208203427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "observation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.string   "title"
    t.text     "problem"
    t.text     "hypothesis"
    t.text     "materials"
    t.text     "procedure"
    t.text     "results"
    t.text     "conclusion"
    t.integer  "proposal_id"
    t.boolean  "active"
    t.integer  "start_date"
    t.integer  "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "lab_tasks", force: :cascade do |t|
    t.integer  "procedure_id"
    t.integer  "log_id"
    t.boolean  "completed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer  "procedure_id"
    t.integer  "user_id"
    t.string   "comment"
    t.integer  "observation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "observations", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "experiment_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "procedures", force: :cascade do |t|
    t.text     "text"
    t.integer  "experiment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "proposals", force: :cascade do |t|
    t.integer  "experiment_id"
    t.text     "abstract"
    t.string   "proposed_funding"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "researcher_experiments", force: :cascade do |t|
    t.integer  "researcher_id"
    t.integer  "experiment_id"
    t.integer  "admin_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
