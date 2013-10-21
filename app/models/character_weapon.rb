class Character_weapon < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :weapon_id
  belongs_to :characters
  belongs_to :weapons
  ###Do not edit the above 

end

