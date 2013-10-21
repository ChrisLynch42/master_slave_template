class Armor < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :cost,  :armor_bonus,  :weight,  :speed,  :don,  :remove
  has_many :characters, through: :character_armors
  ###Do not edit the above 

end

