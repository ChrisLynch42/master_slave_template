class Feat < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :prerequisites,  :benefit
  has_many :characters, through: :character_feats
  ###Do not edit the above 

end

