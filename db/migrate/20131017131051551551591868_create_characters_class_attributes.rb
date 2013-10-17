class CreateCharactersClassAttributes < ActiveRecord::Migration
  def change
    create_table :characters_class_attributes do | t |
      t.integer :character_id
      t.integer :class_attribute_id
      t.timestamps
    end
  end
end



