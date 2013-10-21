class Race_attribute < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :race_id,  :title,  :description
  belongs_to :races
  ###Do not edit the above 

end

