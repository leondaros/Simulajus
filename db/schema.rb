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

ActiveRecord::Schema.define(version: 20180707235755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "defense_type"
    t.integer "lawsuit_type"
    t.integer "evidence"
    t.integer "addressing_type"
    t.bigint "petition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["petition_id"], name: "index_answers_on_petition_id"
  end

  create_table "lawsuits", force: :cascade do |t|
    t.text "description"
    t.text "justification"
    t.boolean "win"
    t.bigint "player_turn_id"
    t.bigint "complainant_id"
    t.bigint "defendant_id"
    t.bigint "judge_id"
    t.bigint "corrector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complainant_id"], name: "index_lawsuits_on_complainant_id"
    t.index ["corrector_id"], name: "index_lawsuits_on_corrector_id"
    t.index ["defendant_id"], name: "index_lawsuits_on_defendant_id"
    t.index ["judge_id"], name: "index_lawsuits_on_judge_id"
    t.index ["player_turn_id"], name: "index_lawsuits_on_player_turn_id"
  end

  create_table "petitions", force: :cascade do |t|
    t.text "history"
    t.text "pedido"
    t.text "facts"
    t.text "justification"
    t.text "addressing"
    t.bigint "user_id"
    t.bigint "lawsuit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lawsuit_id"], name: "index_petitions_on_lawsuit_id"
    t.index ["user_id"], name: "index_petitions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "type"
    t.float "exp"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
