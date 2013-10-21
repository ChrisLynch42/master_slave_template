class Weapon < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :damage,  :attack_bonus,  :damage_bonus
  has_many :characters, through: :character_weapons
  ###Do not edit the above 

end

