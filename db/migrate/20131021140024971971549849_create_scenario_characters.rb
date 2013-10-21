class CreateScenarioCharacters < ActiveRecord::Migration
  def change
    create_table :scenario_characters do | t |
      t.integer :character_id
      t.integer :scenario_id
      t.timestamps
    end
  end
end



