class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.integer :character_id
      t.string :title
      t.string :description
      t.string :damage
      t.integer :attack_bonus
      t.integer :damage_bonus

      t.timestamps
    end
  end
end
