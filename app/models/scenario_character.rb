class Scenario_character < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :scenario_id
  belongs_to :scenarios
  belongs_to :characters
  ###Do not edit the above 

end

