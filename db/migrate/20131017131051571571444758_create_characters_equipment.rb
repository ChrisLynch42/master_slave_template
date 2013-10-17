class CreateCharactersEquipment < ActiveRecord::Migration
  def change
    create_table :characters_equipment do | t |
      t.integer :character_id
      t.integer :equipment_id
      t.timestamps
    end
  end
end



