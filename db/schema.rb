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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120416030303) do

  create_table "charter_contactos", :force => true do |t|
    t.integer  "charter_id"
    t.integer  "contacto_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "charters", :force => true do |t|
    t.string   "proyecto_titulo"
    t.string   "proyecto_version"
    t.integer  "proyecto_id"
    t.text     "resumen"
    t.string   "permalynk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", :force => true do |t|
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.integer  "identificable_id"
    t.string   "identificable_type"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elemento_estrategicos", :force => true do |t|
    t.string   "texto"
    t.integer  "objetivo_negocio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "razon"
    t.string   "rfc"
    t.string   "sitioweb"
    t.string   "permalynk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestones", :force => true do |t|
    t.string   "descripcion"
    t.datetime "fecha_inicio"
    t.string   "entregable"
    t.integer  "charter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "objetivo_negocios", :force => true do |t|
    t.string   "texto"
    t.integer  "charter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "ap_paterno"
    t.string   "ap_materno"
    t.string   "permalynk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", :force => true do |t|
    t.string   "descripcion"
    t.string   "permalynk"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "charter_doc_file_name"
    t.string   "charter_doc_content_type"
    t.integer  "charter_doc_file_size"
    t.datetime "charter_doc_updated_at"
  end

  create_table "stakeholders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "charter_id"
    t.string   "role"
    t.string   "permalynk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
