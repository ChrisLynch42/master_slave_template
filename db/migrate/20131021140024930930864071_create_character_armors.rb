class CreateCharacterArmors < ActiveRecord::Migration
  def change
    create_table :character_armors do | t |
      t.integer :character_id
      t.integer :armor_id
      t.boolean :donned
      t.timestamps
    end
  end
end



