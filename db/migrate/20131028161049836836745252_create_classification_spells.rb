class CreateClassificationSpells < ActiveRecord::Migration
  def change
    create_table :classification_spells do | t |
      t.integer :classification_id
      t.integer :spell_id
      t.timestamps
    end
  end
end



