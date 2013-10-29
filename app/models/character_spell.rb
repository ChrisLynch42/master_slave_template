class Character_spell < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :spell_id,  :prepared
  belongs_to :character
  belongs_to :spell
  ###Do not edit the above 







end

