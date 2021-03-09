# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_09_152056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "category_formation_jointures", force: :cascade do |t|
    t.bigint "formation_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_category_formation_jointures_on_category_id"
    t.index ["formation_id"], name: "index_category_formation_jointures_on_formation_id"
  end

  create_table "formations", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jwt_denylists", force: :cascade do |t|
    t.string "jti"
    t.datetime "expired_at"
    t.index ["jti"], name: "index_jwt_denylists_on_jti"
  end

  create_table "promotion_user_jointures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "promotion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["promotion_id"], name: "index_promotion_user_jointures_on_promotion_id"
    t.index ["user_id"], name: "index_promotion_user_jointures_on_user_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.datetime "date"
    t.integer "note"
    t.integer "nbr_student"
    t.bigint "room_id", null: false
    t.bigint "formation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["formation_id"], name: "index_promotions_on_formation_id"
    t.index ["room_id"], name: "index_promotions_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "role", default: "user"
    t.boolean "is_validated", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "category_formation_jointures", "categories"
  add_foreign_key "category_formation_jointures", "formations"
  add_foreign_key "promotion_user_jointures", "promotions"
  add_foreign_key "promotion_user_jointures", "users"
  add_foreign_key "promotions", "formations"
  add_foreign_key "promotions", "rooms"
end
