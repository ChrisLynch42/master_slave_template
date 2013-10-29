class Race < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :npc
  has_many :race_attributes
  has_many :classifications, through: :characters
  ###Do not edit the above 







end

