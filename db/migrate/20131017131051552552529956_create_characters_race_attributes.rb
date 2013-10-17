class CreateCharactersRaceAttributes < ActiveRecord::Migration
  def change
    create_table :characters_race_attributes do | t |
      t.integer :character_id
      t.integer :racial_attribute_id
      t.timestamps
    end
  end
end



