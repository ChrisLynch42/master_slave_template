class Class < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description
  has_many :class_attributes
  has_many :races, through: :characters
  has_many :spells, through: :classes_spells
  ###Do not edit the above 

end

