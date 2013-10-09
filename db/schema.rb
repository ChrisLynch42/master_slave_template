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

ActiveRecord::Schema.define(:version => 20130327192013) do

  create_table "armors", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.integer  "armor_bonus"
    t.float    "cost"
    t.integer  "weight"
    t.integer  "speed"
    t.integer  "don"
    t.integer  "remove"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "klass"
    t.string   "race"
    t.string   "specialty"
    t.string   "background"
    t.string   "eyes"
    t.string   "height"
    t.string   "hair"
    t.string   "weight"
    t.string   "description"
    t.integer  "speed"
    t.string   "hit_dice"
    t.string   "hit_points"
    t.integer  "initiative"
    t.string   "vision"
    t.string   "size"
    t.integer  "level"
    t.integer  "base_strength"
    t.integer  "base_constitution"
    t.integer  "base_dexterity"
    t.integer  "base_intelligence"
    t.integer  "base_wisdom"
    t.integer  "base_charisma"
    t.integer  "klass_strength"
    t.integer  "klass_constitution"
    t.integer  "klass_dexterity"
    t.integer  "klass_intelligence"
    t.integer  "klass_wisdom"
    t.integer  "klass_charisma"
    t.integer  "race_strength"
    t.integer  "race_constitution"
    t.integer  "race_dexterity"
    t.integer  "race_intelligence"
    t.integer  "race_wisdom"
    t.integer  "race_charisma"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "armor_class"
  end

  create_table "class_attributes", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.integer  "level"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "feats", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.string   "prerequisite"
    t.string   "benefit"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "maneuvers", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.string   "effect"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "racial_attributes", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "skills", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "spells", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.integer  "level"
    t.string   "domain"
    t.string   "range"
    t.string   "damage"
    t.string   "description"
    t.string   "requirement"
    t.string   "effect"
    t.string   "special"
    t.boolean  "ritual"
    t.boolean  "prepared"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "weapons", :force => true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.string   "description"
    t.string   "damage"
    t.integer  "attack_bonus"
    t.integer  "damage_bonus"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
