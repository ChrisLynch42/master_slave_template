class CreateCharacterEquipment < ActiveRecord::Migration
  def change
    create_table :character_equipment do | t |
      t.integer :character_id
      t.integer :equipment_id
      t.timestamps
    end
  end
end



