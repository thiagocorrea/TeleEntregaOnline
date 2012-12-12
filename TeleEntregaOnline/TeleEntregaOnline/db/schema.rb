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

ActiveRecord::Schema.define(:version => 20121108034805) do

  create_table "addresses", :force => true do |t|
    t.integer  "id_endereco"
    t.text     "rua"
    t.integer  "cep"
    t.text     "bairro"
    t.integer  "id_cidade"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cities", :force => true do |t|
    t.integer  "id_cidade"
    t.integer  "id_estado"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.integer  "id_pais"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.integer  "id_usuario"
    t.text     "nome"
    t.boolean  "tipo_pessoa"
    t.text     "telefone"
    t.text     "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "id_produto"
    t.text     "descricao"
    t.boolean  "tipo_produto"
    t.float    "preco"
    t.text     "observacao"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "id_usuario"
    t.integer  "id_pedido"
    t.datetime "data_pedido"
    t.integer  "id_status"
    t.float    "valor_entrega"
    t.float    "valor_produtos"
    t.float    "valor_total"
    t.time     "tempo_estimado"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "states", :force => true do |t|
    t.integer  "id_status"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ufs", :force => true do |t|
    t.integer  "id_estado"
    t.text     "descricao"
    t.integer  "id_pais"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "id_usuario"
    t.text     "username"
    t.text     "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
