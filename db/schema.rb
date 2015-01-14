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

ActiveRecord::Schema.define(version: 20150106161642) do

  create_table "categorias", force: :cascade do |t|
    t.string   "titulo_categoria"
    t.text     "desc_categoria"
    t.text     "imagen_categoria"
    t.string   "icono_categoria"
    t.text     "url_publica_categoria"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "videos", force: :cascade do |t|
    t.integer  "categoria_video"
    t.string   "titulo_video"
    t.text     "desc_video"
    t.text     "servidor_video"
    t.text     "url_video"
    t.text     "url_publica_video"
    t.text     "url_nuevo_video"
    t.integer  "visitas_video"
    t.integer  "compartido_video"
    t.integer  "me_gusta_video"
    t.integer  "no_gusta_video"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
