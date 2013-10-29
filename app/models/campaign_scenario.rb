class Campaign_scenario < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :campaign_id,  :scenario_id
  belongs_to :campaign
  belongs_to :scenario
  ###Do not edit the above 







end

