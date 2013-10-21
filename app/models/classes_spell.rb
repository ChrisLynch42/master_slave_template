class Classes_spell < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :class_id,  :spell_id
  belongs_to :spells
  belongs_to :classes
  ###Do not edit the above 

end

