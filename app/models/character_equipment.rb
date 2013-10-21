class Character_equipment < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :equipment_id
  belongs_to :equipment
  belongs_to :characters
  ###Do not edit the above 



end

