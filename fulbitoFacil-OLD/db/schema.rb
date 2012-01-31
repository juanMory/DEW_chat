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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120127030703) do

  create_table "clients", :force => true do |t|
    t.string   "Nombres"
    t.string   "Apellido_Paterno"
    t.string   "Apellido_Materno"
    t.string   "Sexo"
    t.string   "Tipo_Documento"
    t.string   "Numero_documento"
    t.string   "Direccion"
    t.string   "Distrito"
    t.string   "correo_electronico"
    t.string   "Confirmar_Correo_electronico"
    t.string   "Password"
    t.string   "Confimar_Password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "local1s", :force => true do |t|
    t.string   "Nombre_local"
    t.string   "direccion"
    t.string   "distrito"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", :force => true do |t|
    t.string   "Nombre_local"
    t.string   "direccion"
    t.string   "distrito"
    t.string   "direccion_maps"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", :force => true do |t|
    t.string   "Nombres"
    t.string   "Apellido_Paterno"
    t.string   "Apellido_Materno"
    t.string   "Sexo"
    t.string   "Tipo_Documento"
    t.string   "Numero_documento"
    t.string   "Correo"
    t.string   "CorreoValidacion"
    t.date     "FecNac"
    t.string   "Celular"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regpublis", :force => true do |t|
    t.string   "Titulo"
    t.date     "Fecha_Inicio"
    t.date     "Fecha_fin"
    t.integer  "Tarifa"
    t.boolean  "Num_Click"
    t.string   "Ubicacion"
    t.text     "Contenido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", :force => true do |t|
    t.string   "type"
    t.text     "description"
    t.integer  "tarifa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
