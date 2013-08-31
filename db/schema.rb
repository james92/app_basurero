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

ActiveRecord::Schema.define(:version => 20130831193126) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.integer  "job_id"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.integer  "country_id"
    t.string   "document_type"
    t.string   "document"
    t.string   "nit"
    t.string   "email"
    t.text     "address"
    t.boolean  "state",         :default => true
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "employees", ["country_id"], :name => "index_employees_on_country_id"
  add_index "employees", ["job_id"], :name => "index_employees_on_job_id"

  create_table "jobs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subcategories", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "subcategories", ["category_id"], :name => "index_subcategories_on_category_id"

  create_table "tables", :force => true do |t|
    t.string   "identifier"
    t.text     "location"
    t.boolean  "state",      :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "role_id"
    t.string   "username"
    t.string   "password"
    t.boolean  "state",       :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "users", ["employee_id"], :name => "index_users_on_employee_id"
  add_index "users", ["role_id"], :name => "index_users_on_role_id"

end
