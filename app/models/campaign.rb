class Campaign < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :name,  :description
  has_many :scenarios, through: :campaign_scenarios
  ###Do not edit the above 







end

