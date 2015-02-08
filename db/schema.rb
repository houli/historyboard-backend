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

ActiveRecord::Schema.define(version: 20150208144311) do

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts_subthemes", id: false, force: :cascade do |t|
    t.integer "post_id"
    t.integer "subtheme_id"
  end

  add_index "posts_subthemes", ["post_id"], name: "index_posts_subthemes_on_post_id"
  add_index "posts_subthemes", ["subtheme_id"], name: "index_posts_subthemes_on_subtheme_id"

  create_table "subthemes", force: :cascade do |t|
    t.integer  "theme_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subthemes", ["theme_id"], name: "index_subthemes_on_theme_id"

  create_table "themes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
