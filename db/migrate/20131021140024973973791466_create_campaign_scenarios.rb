class CreateCampaignScenarios < ActiveRecord::Migration
  def change
    create_table :campaign_scenarios do | t |
      t.integer :campaign_id
      t.integer :scenario_id
      t.timestamps
    end
  end
end



