class CreateCharacterSpells < ActiveRecord::Migration
  def change
    create_table :character_spells do | t |
      t.integer :character_id
      t.integer :spell_id
      t.boolean :prepared
      t.timestamps
    end
  end
end



