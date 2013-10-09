class CharacterAddAc < ActiveRecord::Migration
  def up
    add_column :characters, :armor_class, :integer
  end

  def down
  end
end
