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

ActiveRecord::Schema[7.0].define(version: 2022_10_31_200020) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "bio"
    t.integer "favorite_number"
    t.time "aweka"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mainboards", force: :cascade do |t|
    t.string "product_name"
    t.string "processors_suported"
    t.integer "qtd_slots_ram"
    t.integer "max_memory_ram"
    t.boolean "video_board"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memoryrams", force: :cascade do |t|
    t.string "product_name"
    t.integer "memory_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name_order"
    t.integer "author_id", null: false
    t.integer "processor_id", null: false
    t.integer "mainboard_id", null: false
    t.integer "memoryram_id", null: false
    t.integer "videoboard_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_orders_on_author_id"
    t.index ["mainboard_id"], name: "index_orders_on_mainboard_id"
    t.index ["memoryram_id"], name: "index_orders_on_memoryram_id"
    t.index ["processor_id"], name: "index_orders_on_processor_id"
    t.index ["videoboard_id"], name: "index_orders_on_videoboard_id"
  end

  create_table "processors", force: :cascade do |t|
    t.string "product_name"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videoboards", force: :cascade do |t|
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "authors"
  add_foreign_key "orders", "mainboards"
  add_foreign_key "orders", "memoryrams"
  add_foreign_key "orders", "processors"
  add_foreign_key "orders", "videoboards"
end
