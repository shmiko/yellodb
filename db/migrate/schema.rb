# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version : 0) do
  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "name",         
    t.binary "picture",      
    t.string "content_type", default : "image/png"
  end

  create_table "base_tracks", force: :cascade do |t|
    t.string "name", 
  end

  create_table "bookmarks", force: :cascade do |t|
    t.string "title",   limit : 50
    t.datetime "created_at",        null: false
    t.string "bookmarkable_type", limit : 15
    t.integer "bookmarkable_id", default : 0
    t.integer "user_id",  default : 0
  end

  add_index "bookmarks", ["user_id"], :name : "fk_bookmarks_user"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "track_id", 
  end

  add_index "favorites", ["user_id"], name : "user_id"
  add_index "favorites", ["track_id"], name : "track_id"

  create_table "genres", force: :cascade do |t|
    t.string "name", 
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", 
    t.text "data", 
    t.datetime "updated_at", null: false
  end

  add_index "sessions", ["session_id", "updated_at"], :name : "sessions"

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "taggable_id",  null: false
    t.string "taggable_type", limit : 40, default : "", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", limit : 40, default : "", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title",         
    t.integer "artist_id",     
    t.integer "base_track_id", 
    t.text "length",  
    t.datetime "purchase_date", 
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer "genre_id",      
    t.binary "picture",  
    t.string "file_name",     
    t.string "content_type", default : "image/png"
    t.string "link",     default : "",          null: false
    t.integer "user_id",       
    t.string "permalink",     default : "",          null: false
    t.integer "votes_count",   default : 0,           null: false
  end

  add_index "tracks", ["user_id"], name : "user_id"
  add_index "tracks", ["title"], name : "title"

  create_table "users", force: :cascade do |t|
    t.string "login", limit : 8, default : "", null: false
    t.string "password", limit : 8, default : "", null: false
    t.string "email",  default : "", null: false
    t.string "name",  default : "", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "track_id",  null: false
    t.datetime "created_at", null: false
    t.integer "user_id",
  end

  add_index "votes", ["track_id"], name : "track_id"

end