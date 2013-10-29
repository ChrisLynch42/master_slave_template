class Character_armor < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :armor_id,  :donned
  belongs_to :armor
  belongs_to :character
  ###Do not edit the above 







end

