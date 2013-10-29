class Character_skill < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :skill_id
  belongs_to :character
  belongs_to :skill
  ###Do not edit the above 







end

