# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_27_160116) do

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "scores", force: :cascade do |t|
    t.boolean "rx", default: true
    t.time "result_time"
    t.integer "result_reps"
    t.date "date"
    t.string "notes"
    t.boolean "public", default: true
    t.integer "user_id", null: false
    t.integer "workout_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_scores_on_user_id"
    t.index ["workout_id"], name: "index_scores_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.float "height"
    t.integer "weight"
    t.string "country"
    t.string "uid"
    t.string "provider"
    t.integer "gym_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gym_id"], name: "index_users_on_gym_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "group"
    t.string "category"
    t.text "description"
    t.text "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "scores", "users"
  add_foreign_key "scores", "workouts"
  add_foreign_key "users", "gyms"
end
