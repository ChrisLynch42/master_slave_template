class Scenario < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :name,  :description
  has_many :characters, through: :scenario_characters
  has_many :campaigns, through: :campaign_scenarios
  ###Do not edit the above 

end

