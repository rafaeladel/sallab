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

ActiveRecord::Schema.define(version: 20150627133310) do

  create_table "about", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "about_section_translations", force: :cascade do |t|
    t.integer  "about_section_id", limit: 4,     null: false
    t.string   "locale",           limit: 255,   null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title",            limit: 255
    t.text     "content",          limit: 65535
  end

  add_index "about_section_translations", ["about_section_id"], name: "index_about_section_translations_on_about_section_id", using: :btree
  add_index "about_section_translations", ["locale"], name: "index_about_section_translations_on_locale", using: :btree

  create_table "about_sections", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "about_translations", force: :cascade do |t|
    t.integer  "about_id",    limit: 4,     null: false
    t.string   "locale",      limit: 255,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "keywords",    limit: 65535
  end

  add_index "about_translations", ["about_id"], name: "index_about_translations_on_about_id", using: :btree
  add_index "about_translations", ["locale"], name: "index_about_translations_on_locale", using: :btree

  create_table "banner_translations", force: :cascade do |t|
    t.integer  "banner_id",  limit: 4,   null: false
    t.string   "locale",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slogan1",    limit: 255
    t.string   "slogan2",    limit: 255
  end

  add_index "banner_translations", ["banner_id"], name: "index_banner_translations_on_banner_id", using: :btree
  add_index "banner_translations", ["locale"], name: "index_banner_translations_on_locale", using: :btree

  create_table "banners", force: :cascade do |t|
    t.string   "image",       limit: 255
    t.integer  "banner_type", limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "branch_translations", force: :cascade do |t|
    t.integer  "branch_id",  limit: 4,     null: false
    t.string   "locale",     limit: 255,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "address",    limit: 65535
  end

  add_index "branch_translations", ["branch_id"], name: "index_branch_translations_on_branch_id", using: :btree
  add_index "branch_translations", ["locale"], name: "index_branch_translations_on_locale", using: :btree

  create_table "branches", force: :cascade do |t|
    t.string   "phone",      limit: 255
    t.integer  "region_id",  limit: 4
    t.string   "lat",        limit: 255
    t.string   "long",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "branches", ["region_id"], name: "index_branches_on_region_id", using: :btree

  create_table "brand_translations", force: :cascade do |t|
    t.integer  "brand_id",   limit: 4,   null: false
    t.string   "locale",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
  end

  add_index "brand_translations", ["brand_id"], name: "index_brand_translations_on_brand_id", using: :btree
  add_index "brand_translations", ["locale"], name: "index_brand_translations_on_locale", using: :btree

  create_table "brands", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  add_index "colors", ["product_id"], name: "fk_rails_4d68238213", using: :btree

  create_table "home", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_translations", force: :cascade do |t|
    t.integer  "home_id",     limit: 4,     null: false
    t.string   "locale",      limit: 255,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.text     "keywords",    limit: 65535
  end

  add_index "home_translations", ["home_id"], name: "index_home_translations_on_home_id", using: :btree
  add_index "home_translations", ["locale"], name: "index_home_translations_on_locale", using: :btree

  create_table "origin_translations", force: :cascade do |t|
    t.integer  "origin_id",  limit: 4,   null: false
    t.string   "locale",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
  end

  add_index "origin_translations", ["locale"], name: "index_origin_translations_on_locale", using: :btree
  add_index "origin_translations", ["origin_id"], name: "index_origin_translations_on_origin_id", using: :btree

  create_table "origins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_section_translations", force: :cascade do |t|
    t.integer  "product_section_id", limit: 4,   null: false
    t.string   "locale",             limit: 255, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title",              limit: 255
  end

  add_index "product_section_translations", ["locale"], name: "index_product_section_translations_on_locale", using: :btree
  add_index "product_section_translations", ["product_section_id"], name: "index_product_section_translations_on_product_section_id", using: :btree

  create_table "product_sections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_translations", force: :cascade do |t|
    t.integer  "product_id",  limit: 4,     null: false
    t.string   "locale",      limit: 255,   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "description", limit: 65535
  end

  add_index "product_translations", ["locale"], name: "index_product_translations_on_locale", using: :btree
  add_index "product_translations", ["product_id"], name: "index_product_translations_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "origin_id",          limit: 4
    t.integer  "brand_id",           limit: 4
    t.integer  "tile_size_id",       limit: 4
    t.string   "code",               limit: 255
    t.string   "image",              limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "product_section_id", limit: 4
  end

  add_index "products", ["product_section_id"], name: "fk_rails_0b001f140b", using: :btree

  create_table "region_translations", force: :cascade do |t|
    t.integer  "region_id",  limit: 4,   null: false
    t.string   "locale",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title",      limit: 255
  end

  add_index "region_translations", ["locale"], name: "index_region_translations_on_locale", using: :btree
  add_index "region_translations", ["region_id"], name: "index_region_translations_on_region_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seven_careers_candidate_statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "seven_careers_candidates", force: :cascade do |t|
    t.integer  "job_id",      limit: 4
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "phone",       limit: 255
    t.string   "resume_path", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "status_id",   limit: 4
  end

  create_table "seven_careers_jobs", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "seven_contact_contact_records", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
  end

  create_table "seven_gallery_galleries", force: :cascade do |t|
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "banner_id",               limit: 4
    t.integer  "seven_portfolio_item_id", limit: 4
  end

  add_index "seven_gallery_galleries", ["banner_id"], name: "index_seven_gallery_galleries_on_banner_id", using: :btree
  add_index "seven_gallery_galleries", ["seven_portfolio_item_id"], name: "index_seven_gallery_galleries_on_seven_portfolio_item_id", using: :btree

  create_table "seven_gallery_gallery_translations", force: :cascade do |t|
    t.integer  "seven_gallery_gallery_id", limit: 4,   null: false
    t.string   "locale",                   limit: 255, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "title",                    limit: 255
  end

  add_index "seven_gallery_gallery_translations", ["locale"], name: "index_seven_gallery_gallery_translations_on_locale", using: :btree
  add_index "seven_gallery_gallery_translations", ["seven_gallery_gallery_id"], name: "index_12c811f3dc8e166265a35a85a4ae1e062d1a24ca", using: :btree

  create_table "seven_gallery_photos", force: :cascade do |t|
    t.string   "caption",                  limit: 255
    t.string   "image",                    limit: 255
    t.integer  "seven_gallery_gallery_id", limit: 4
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.boolean  "is_new",                   limit: 1,     default: true
    t.boolean  "is_featured",              limit: 1,     default: false
    t.text     "description",              limit: 65535
    t.string   "alt",                      limit: 255
    t.integer  "position",                 limit: 4,     default: 0
  end

  add_index "seven_gallery_photos", ["seven_gallery_gallery_id"], name: "index_seven_gallery_photos_on_seven_gallery_gallery_id", using: :btree

  create_table "seven_portfolio_item_translations", force: :cascade do |t|
    t.integer  "seven_portfolio_item_id", limit: 4,     null: false
    t.string   "locale",                  limit: 255,   null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "title",                   limit: 255
    t.text     "description",             limit: 65535
  end

  add_index "seven_portfolio_item_translations", ["locale"], name: "index_seven_portfolio_item_translations_on_locale", using: :btree
  add_index "seven_portfolio_item_translations", ["seven_portfolio_item_id"], name: "index_1b38162cacc51f94c8320b143f7be178214ff78b", using: :btree

  create_table "seven_portfolio_item_videos", force: :cascade do |t|
    t.string   "url",                     limit: 255
    t.text     "description",             limit: 65535
    t.string   "title",                   limit: 255
    t.integer  "seven_portfolio_item_id", limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "seven_portfolio_item_videos", ["seven_portfolio_item_id"], name: "index_seven_portfolio_item_videos_on_seven_portfolio_item_id", using: :btree

  create_table "seven_portfolio_items", force: :cascade do |t|
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "item_type",  limit: 4, default: 0
  end

  create_table "tile_sizes", force: :cascade do |t|
    t.integer  "height",     limit: 4
    t.integer  "width",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_foreign_key "branches", "regions", on_delete: :cascade
  add_foreign_key "colors", "products", on_delete: :cascade
  add_foreign_key "products", "product_sections", on_delete: :cascade
  add_foreign_key "seven_gallery_galleries", "banners", on_delete: :cascade
  add_foreign_key "seven_gallery_galleries", "seven_portfolio_items", on_delete: :cascade
  add_foreign_key "seven_gallery_photos", "seven_gallery_galleries", on_delete: :cascade
  add_foreign_key "seven_portfolio_item_videos", "seven_portfolio_items", on_delete: :cascade
end
