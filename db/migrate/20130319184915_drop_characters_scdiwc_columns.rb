class DropCharactersScdiwcColumns < ActiveRecord::Migration
  def up
    remove_column :characters, :strength
    remove_column :characters, :constitution
    remove_column :characters, :dexterity
    remove_column :characters, :intelligence
    remove_column :characters, :wisdom
    remove_column :characters, :charisma
  end

  def down
  end
end
