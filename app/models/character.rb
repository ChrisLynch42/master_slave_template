class Character < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :race_id,  :class_id,  :type,  :Specialty,  :background,  :eyes,  :hair,  :height,  :weight,  :speed,  :hit_dice,  :hit_points,  :initiative,  :vision,  :size,  :level,  :strength,  :constitution,  :dexterity,  :intelligence,  :wisdom,  :charisma,  :description,  :npc
  belongs_to :classification
  belongs_to :race
  has_many :weapons, through: :character_weapons
  has_many :armors, through: :character_armors
  has_many :skills, through: :character_skills
  has_many :feats, through: :character_feats
  has_many :spells, through: :character_spells
  has_many :equipment, through: :character_equipment
  has_many :scenarios, through: :scenario_characters
  ###Do not edit the above 







end

