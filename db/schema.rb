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

ActiveRecord::Schema[7.1].define(version: 2024_08_19_233801) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string "api_key"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "api_logs", force: :cascade do |t|
    t.bigint "api_key_id", null: false
    t.json "request_details"
    t.float "response_time"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["api_key_id"], name: "index_api_logs_on_api_key_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "guest_id", null: false
    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_bookings_on_guest_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "check_ins", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.datetime "check_in_time"
    t.string "digital_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_check_ins_on_guest_id"
  end

  create_table "developers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.json "preferences"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "item_name"
    t.integer "quantity"
    t.integer "reorder_level"
    t.integer "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loyalty_programs", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.integer "points_balance"
    t.string "membership_tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_loyalty_programs_on_guest_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "item_name"
    t.text "description"
    t.decimal "price"
    t.integer "popularity_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.text "offer_details"
    t.datetime "expiry_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_offers_on_guest_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "reservation_id", null: false
    t.bigint "menu_item_id", null: false
    t.integer "quantity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_item_id"], name: "index_orders_on_menu_item_id"
    t.index ["reservation_id"], name: "index_orders_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.bigint "table_id", null: false
    t.datetime "reservation_time"
    t.text "special_requests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
    t.index ["table_id"], name: "index_reservations_on_table_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.text "review_text"
    t.integer "rating"
    t.string "sentiment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reviews_on_guest_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_number"
    t.string "room_type"
    t.string "status"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_schedules", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "shift_start"
    t.datetime "shift_end"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_staff_schedules_on_user_id"
  end

  create_table "tables", force: :cascade do |t|
    t.integer "table_number"
    t.integer "seating_capacity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "api_logs", "api_keys"
  add_foreign_key "bookings", "guests"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "check_ins", "guests"
  add_foreign_key "loyalty_programs", "guests"
  add_foreign_key "offers", "guests"
  add_foreign_key "orders", "menu_items"
  add_foreign_key "orders", "reservations"
  add_foreign_key "reservations", "guests"
  add_foreign_key "reservations", "tables"
  add_foreign_key "reviews", "guests"
  add_foreign_key "staff_schedules", "users"
end
