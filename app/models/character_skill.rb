class Character_skill < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :skill_id
  belongs_to :characters
  belongs_to :skills
  ###Do not edit the above 

end

