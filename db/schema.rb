# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_214002) do

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidoPaterno"
    t.string "apellidoMaterno"
    t.date "fechaNacimiento"
    t.string "telefono"
    t.string "email"
    t.string "nss"
    t.string "categoria"
    t.string "activo"
    t.date "fechaCreacion"
    t.date "fehcaActualizacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "herramienta_maquinaria", force: :cascade do |t|
    t.string "nombre"
    t.string "modelo"
    t.string "marca"
    t.date "fechaAdquisicion"
    t.integer "cantidadAlmacen"
    t.date "fechaCreacion"
    t.date "fechaActualizacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "obras_proyectos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "ubicacion"
    t.string "TipoObra"
    t.integer "MontoObra"
    t.date "fechaInicio"
    t.date "fechaFin"
    t.string "responsable"
    t.date "fechaCreacion"
    t.date "fechaActualizacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proveedores", force: :cascade do |t|
    t.string "compa??ia"
    t.string "telefono"
    t.string "nombreContacto"
    t.string "tipoProveedor"
    t.date "fechaCreacion"
    t.date "fechaActualizacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombre"
    t.integer "tipo_usuario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "password"
    t.string "tipoUsuario"
    t.date "fechaCreacion"
    t.date "fechaActualizacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
