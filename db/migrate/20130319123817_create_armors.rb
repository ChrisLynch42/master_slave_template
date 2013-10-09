class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.integer :character_id
      t.string :title
      t.string :description
      t.integer :armor_bonus
      t.float :cost
      t.integer :weight
      t.integer :speed
      t.integer :don
      t.integer :remove

      t.timestamps
    end
  end
end
