class Character_armor < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :armor_id,  :donned
  belongs_to :armors
  belongs_to :characters
  ###Do not edit the above 

end

