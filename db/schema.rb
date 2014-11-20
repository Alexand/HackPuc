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

ActiveRecord::Schema.define(version: 20141120091611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chamadas", force: true do |t|
    t.string   "linha"
    t.integer  "parada_id"
    t.text     "descricao"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contatos", force: true do |t|
    t.text     "mensagem"
    t.integer  "user_id"
    t.integer  "tipo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paradas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "linha"
    t.string   "descricao"
    t.integer  "sequencia"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "endereco"
    t.string   "agencia"
    t.string   "bairro"
  end

  create_table "tipos_contatos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
