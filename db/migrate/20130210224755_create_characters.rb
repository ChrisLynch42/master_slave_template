class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :klass
      t.string :race
      t.string :specialty
      t.string :background
      t.string :eyes
      t.string :height
      t.string :hair
      t.string :weight
      t.string :description
      t.integer :speed
      t.string :hit_dice
      t.string :hit_points
      t.integer :initiative
      t.string :vision
      t.string :size
      t.integer :level
      t.integer :strength
      t.integer :constitution
      t.integer :dexterity
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :base_strength
      t.integer :base_constitution
      t.integer :base_dexterity
      t.integer :base_intelligence
      t.integer :base_wisdom
      t.integer :base_charisma
      t.integer :klass_strength
      t.integer :klass_constitution
      t.integer :klass_dexterity
      t.integer :klass_intelligence
      t.integer :klass_wisdom
      t.integer :klass_charisma
      t.integer :race_strength
      t.integer :race_constitution
      t.integer :race_dexterity
      t.integer :race_intelligence
      t.integer :race_wisdom
      t.integer :race_charisma

      t.timestamps
    end
  end
end
