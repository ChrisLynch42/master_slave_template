class Classification_spell < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :classification_id,  :spell_id
  belongs_to :spell
  belongs_to :classification
  ###Do not edit the above 







end

