class Character_spell < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :spell_id,  :prepared
  belongs_to :characters
  belongs_to :spells
  ###Do not edit the above 

end

