class Feat < ActiveRecord::Base
  validates :title, { :presence => true }
  
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :prerequisites,  :benefit
  has_many :characters, through: :character_feats
  ###Do not edit the above 

end

