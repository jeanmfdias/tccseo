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

ActiveRecord::Schema.define(version: 20140706142514) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome"
    t.string   "url_amigavel"
    t.text     "sobre"
    t.integer  "status"
    t.string   "meta_titulo"
    t.string   "meta_descricao"
    t.string   "titulo_link"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "artigos", force: true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.string   "imagem"
    t.string   "titulo_imagem"
    t.string   "meta_titulo"
    t.string   "meta_descricao"
    t.string   "titulo_link"
    t.integer  "categoria_id"
    t.integer  "admin_user_id"
    t.string   "url_amigavel"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artigos", ["admin_user_id"], name: "index_artigos_on_admin_user_id", using: :btree
  add_index "artigos", ["categoria_id"], name: "index_artigos_on_categoria_id", using: :btree

  create_table "calendarios", force: true do |t|
    t.string   "titulo_evento"
    t.date     "data"
    t.time     "horario"
    t.text     "detalhes"
    t.string   "url_amigavel"
    t.string   "meta_titulo"
    t.string   "meta_descricao"
    t.string   "titulo_link"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "local"
    t.text     "mapa"
  end

  create_table "categoria", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "url_amigavel"
    t.string   "meta_titulo"
    t.string   "meta_descricao"
    t.string   "titulo_link"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "categoria_id"
  end

  add_index "categoria", ["categoria_id"], name: "index_categoria_on_categoria_id", using: :btree

  create_table "contatos", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "assunto"
    t.text     "mensagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
