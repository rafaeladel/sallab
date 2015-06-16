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

ActiveRecord::Schema.define(version: 20150615220014) do

  create_table "about", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "about_translations", force: :cascade do |t|
    t.integer  "about_id",    null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "description"
    t.text     "keywords"
  end

  add_index "about_translations", ["about_id"], name: "index_about_translations_on_about_id"
  add_index "about_translations", ["locale"], name: "index_about_translations_on_locale"

  create_table "banner_translations", force: :cascade do |t|
    t.integer  "banner_id",  null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slogan1"
    t.string   "slogan2"
  end

  add_index "banner_translations", ["banner_id"], name: "index_banner_translations_on_banner_id"
  add_index "banner_translations", ["locale"], name: "index_banner_translations_on_locale"

  create_table "banners", force: :cascade do |t|
    t.string   "image"
    t.integer  "banner_type", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "home", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_translations", force: :cascade do |t|
    t.integer  "home_id",     null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.text     "description"
    t.text     "keywords"
  end

  add_index "home_translations", ["home_id"], name: "index_home_translations_on_home_id"
  add_index "home_translations", ["locale"], name: "index_home_translations_on_locale"

  create_table "seven_careers_candidate_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seven_careers_candidates", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "resume_path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "status_id"
  end

  create_table "seven_careers_jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seven_contact_contact_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "email"
    t.string   "name"
    t.text     "content"
  end

  create_table "seven_gallery_galleries", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "seven_portfolio_item_id"
    t.integer  "banner_id"
  end

  add_index "seven_gallery_galleries", ["banner_id"], name: "index_seven_gallery_galleries_on_banner_id"
  add_index "seven_gallery_galleries", ["seven_portfolio_item_id"], name: "index_seven_gallery_galleries_on_seven_portfolio_item_id"

  create_table "seven_gallery_photos", force: :cascade do |t|
    t.string   "caption"
    t.string   "image"
    t.integer  "seven_gallery_gallery_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.boolean  "is_new",                   default: true
    t.boolean  "is_featured",              default: false
    t.text     "description"
    t.string   "alt"
    t.integer  "position",                 default: 0
  end

  add_index "seven_gallery_photos", ["seven_gallery_gallery_id"], name: "index_seven_gallery_photos_on_seven_gallery_gallery_id"

  create_table "seven_portfolio_item_videos", force: :cascade do |t|
    t.string   "url"
    t.text     "description"
    t.string   "title"
    t.integer  "seven_portfolio_item_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "seven_portfolio_item_videos", ["seven_portfolio_item_id"], name: "index_seven_portfolio_item_videos_on_seven_portfolio_item_id"

  create_table "seven_portfolio_items", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.text     "description"
    t.date     "finished_at"
    t.boolean  "is_featured", default: false
    t.integer  "item_type",   default: 0
  end

end
