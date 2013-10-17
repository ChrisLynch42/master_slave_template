class CreateCharactersSkills < ActiveRecord::Migration
  def change
    create_table :characters_skills do | t |
      t.integer :character_id
      t.integer :skill_id
      t.timestamps
    end
  end
end



