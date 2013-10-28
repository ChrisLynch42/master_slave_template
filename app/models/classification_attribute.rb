class Classification_attribute < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :classification_id,  :title,  :level,  :description
  belongs_to :classification
  ###Do not edit the above 

end

