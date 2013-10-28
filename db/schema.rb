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

ActiveRecord::Schema.define(:version => 20131028161049836836745252) do

  create_table "armors", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.float    "cost"
    t.integer  "armor_bonus"
    t.integer  "weight"
    t.integer  "speed"
    t.integer  "don"
    t.integer  "remove"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "campaign_scenarios", :force => true do |t|
    t.integer  "campaign_id"
    t.integer  "scenario_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "character_armors", :force => true do |t|
    t.integer  "character_id"
    t.integer  "armor_id"
    t.boolean  "donned"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_equipment", :force => true do |t|
    t.integer  "character_id"
    t.integer  "equipment_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_feats", :force => true do |t|
    t.integer  "character_id"
    t.integer  "feat_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_skills", :force => true do |t|
    t.integer  "character_id"
    t.integer  "skill_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_spells", :force => true do |t|
    t.integer  "character_id"
    t.integer  "spell_id"
    t.boolean  "prepared"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "character_weapons", :force => true do |t|
    t.integer  "character_id"
    t.integer  "weapon_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.integer  "race_id"
    t.string   "class_id"
    t.string   "type"
    t.string   "Specialty"
    t.string   "background"
    t.string   "eyes"
    t.string   "hair"
    t.string   "height"
    t.string   "weight"
    t.integer  "speed"
    t.string   "hit_dice"
    t.integer  "hit_points"
    t.integer  "initiative"
    t.string   "vision"
    t.string   "size"
    t.integer  "level"
    t.integer  "strength"
    t.integer  "constitution"
    t.integer  "dexterity"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "description"
    t.boolean  "npc"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "classification_attributes", :force => true do |t|
    t.integer  "classification_id"
    t.string   "title"
    t.integer  "level"
    t.string   "description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "classification_spells", :force => true do |t|
    t.integer  "classification_id"
    t.integer  "spell_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "classifications", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "domains", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "equipment", :force => true do |t|
    t.string   "title"
    t.float    "cost"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "feats", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "prerequisites"
    t.string   "benefit"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "race_attributes", :force => true do |t|
    t.integer  "race_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "races", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "npc"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scenario_characters", :force => true do |t|
    t.integer  "character_id"
    t.integer  "scenario_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "scenarios", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "spells", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "level"
    t.integer  "domain_id"
    t.integer  "range"
    t.string   "damage"
    t.string   "requirement"
    t.string   "effect"
    t.string   "special"
    t.boolean  "ritual"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "weapons", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "damage"
    t.integer  "attack_bonus"
    t.integer  "damage_bonus"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
