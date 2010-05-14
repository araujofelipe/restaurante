# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100512232317) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.date     "nascimento"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "idade"
  end

  create_table "comentarios", :force => true do |t|
    t.text     "conteudo"
    t.integer  "comentavel_id"
    t.string   "comentavel_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["comentavel_id"], :name => "index_comentarios_on_comentavel_id"
  add_index "comentarios", ["comentavel_type"], :name => "index_comentarios_on_comentavel_type"

  create_table "pratos", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pratos_restaurantes", :force => true do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", :id => false, :force => true do |t|
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
    t.float    "nota"
    t.float    "valor_gasto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualificacoes", ["cliente_id"], :name => "index_qualificacoes_on_cliente_id"
  add_index "qualificacoes", ["restaurante_id"], :name => "index_qualificacoes_on_restaurante_id"

  create_table "receitas", :force => true do |t|
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantes", :force => true do |t|
    t.string   "nome",          :limit => 90, :default => "", :null => false
    t.date     "data_abertura"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "especialidade", :limit => 40
  end

end
