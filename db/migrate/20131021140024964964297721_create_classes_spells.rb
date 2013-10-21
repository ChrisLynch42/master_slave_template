class CreateClassesSpells < ActiveRecord::Migration
  def change
    create_table :classes_spells do | t |
      t.integer :class_id
      t.integer :spell_id
      t.timestamps
    end
  end
end



