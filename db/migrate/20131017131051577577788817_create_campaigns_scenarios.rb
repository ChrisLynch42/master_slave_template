class CreateCampaignsScenarios < ActiveRecord::Migration
  def change
    create_table :campaigns_scenarios do | t |
      t.integer :campaign_id
      t.integer :scenario_id
      t.timestamps
    end
  end
end



