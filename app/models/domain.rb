class Domain < ActiveRecord::Base
  validates :name, { :presence => true }


  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :name,  :description
  has_many :spells
  ###Do not edit the above 

end

