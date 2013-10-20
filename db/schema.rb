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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131019165713) do

  create_table "exercises", :force => true do |t|
    t.string   "muscle_group"
    t.string   "name"
    t.string   "description"
    t.string   "option_types"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "programs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.integer  "sequence"
    t.integer  "program_number"
    t.integer  "rating"
    t.string   "name"
    t.string   "description"
    t.string   "type"
    t.integer  "reps"
    t.integer  "sets"
    t.integer  "rest_time"
    t.integer  "weight"
    t.integer  "distance"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.datetime "time"
    t.string   "distance_unit"
    t.string   "swim_distance_unit"
    t.string   "weight_unit"
    t.integer  "hours"
    t.integer  "minutes"
    t.integer  "seconds"
  end

  add_index "programs", ["user_id", "exercise_id"], :name => "index_programs_on_user_id_and_exercise_id"

  create_table "sequences", :force => true do |t|
    t.integer "counter_field", :default => 0, :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.integer  "weight"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end