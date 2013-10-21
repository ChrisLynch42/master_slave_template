class Equipment < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :cost,  :description
  has_many :characters, through: :character_equipment
  ###Do not edit the above 



end

