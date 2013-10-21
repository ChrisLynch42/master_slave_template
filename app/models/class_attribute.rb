class Class_attribute < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :class_id,  :title,  :level,  :description
  belongs_to :classes
  ###Do not edit the above 

end

