class Skill < ActiveRecord::Base
  validates :title, { :presence => true }


  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description
  has_many :characters, through: :character_skills
  ###Do not edit the above 

end

