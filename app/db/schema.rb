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

ActiveRecord::Schema.define(version: 20_170_826_043_946) do
  create_table 'blogs', force: :cascade do |t|
    t.integer 'postnum'
    t.string 'title'
    t.integer 'good'
    t.integer 'comment'
    t.date 'posttime'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'comments', force: :cascade do |t|
    t.string 'body'
    t.string 'date'
    t.integer 'blog_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['blog_id'], name: 'index_comments_on_blog_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
