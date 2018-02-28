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

ActiveRecord::Schema.define(version: 20180228080813) do

  create_table "attendances", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.integer  "term_id"
    t.integer  "stage_id"
    t.integer  "table_estimation_id"
    t.date     "date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["stage_id"], name: "index_competitions_on_stage_id"
    t.index ["table_estimation_id"], name: "index_competitions_on_table_estimation_id"
    t.index ["term_id"], name: "index_competitions_on_term_id"
  end

  create_table "judge_competitions", force: :cascade do |t|
    t.integer  "judge_id"
    t.integer  "competition_id"
    t.integer  "attendance_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["attendance_id"], name: "index_judge_competitions_on_attendance_id"
    t.index ["competition_id"], name: "index_judge_competitions_on_competition_id"
    t.index ["judge_id"], name: "index_judge_competitions_on_judge_id"
  end

  create_table "judges", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "university_id"
    t.integer  "role_id"
    t.integer  "passsword"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["role_id"], name: "index_judges_on_role_id"
    t.index ["university_id"], name: "index_judges_on_university_id"
  end

  create_table "layers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_competitions", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "competition_id"
    t.integer  "attendance_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["attendance_id"], name: "index_player_competitions_on_attendance_id"
    t.index ["competition_id"], name: "index_player_competitions_on_competition_id"
    t.index ["player_id"], name: "index_player_competitions_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "name"
    t.integer  "university_id"
    t.integer  "grade"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["university_id"], name: "index_players_on_university_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string   "name"
    t.integer  "layer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["layer_id"], name: "index_ranks_on_layer_id"
  end

  create_table "result_details", force: :cascade do |t|
    t.integer  "result_id"
    t.integer  "player_id"
    t.integer  "judge_id"
    t.integer  "table_role_id"
    t.integer  "ranking"
    t.integer  "feeling_ranking"
    t.integer  "q"
    t.integer  "c1"
    t.integer  "c2"
    t.integer  "s1"
    t.integer  "s2"
    t.integer  "s3"
    t.integer  "a1"
    t.integer  "a2"
    t.integer  "a3"
    t.integer  "attitude_point"
    t.integer  "statement_count"
    t.integer  "point"
    t.integer  "occupancy_rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["judge_id"], name: "index_result_details_on_judge_id"
    t.index ["player_id"], name: "index_result_details_on_player_id"
    t.index ["result_id"], name: "index_result_details_on_result_id"
    t.index ["table_role_id"], name: "index_result_details_on_table_role_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "competition_id"
    t.integer  "rank_id"
    t.integer  "table_number"
    t.integer  "degree_of_progress"
    t.integer  "table_point"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["competition_id"], name: "index_results_on_competition_id"
    t.index ["rank_id"], name: "index_results_on_rank_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_estimations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "table_roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
