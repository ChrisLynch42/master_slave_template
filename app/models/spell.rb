class Spell < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :level,  :domain_id,  :range,  :damage,  :requirement,  :effect,  :special,  :ritual
  belongs_to :domains
  has_many :characters, through: :character_spells
  has_many :classes, through: :classes_spells
  ###Do not edit the above 

end

