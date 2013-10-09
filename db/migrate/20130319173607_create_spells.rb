class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.integer :character_id
      t.string :title
      t.integer :level
      t.string :type
      t.string :range
      t.string :damage
      t.string :description
      t.string :requirement
      t.string :effect
      t.string :special
      t.boolean :ritual
      t.boolean :prepared

      t.timestamps
    end
  end
end
