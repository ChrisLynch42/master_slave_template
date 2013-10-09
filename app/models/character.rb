class Character < ActiveRecord::Base
  attr_accessible :background, :base_charisma, :base_constitution, :base_dexterity, :base_intelligence, :base_strength, :base_wisdom, :charisma, :constitution, :description, :dexterity, :eyes, :hair, :height, :hit_dice, :hit_points, :initiative, :intelligence, :klass, :klass_charisma, :klass_constitution, :klass_dexterity, :klass_intelligence, :klass_strength, :klass_wisdom, :level, :name, :race, :race_charisma, :race_constitution, :race_dexterity, :race_intelligence, :race_strength, :race_wisdom, :size, :specialty, :speed, :strength, :vision, :weight, :wisdom, :armor_class

  def strength
    base_strength + klass_strength + race_strength
  end

  def constitution
    base_constitution + klass_constitution + race_constitution
  end

  def dexterity
    base_dexterity + klass_dexterity + race_dexterity
  end

  def wisdom
    base_wisdom+ klass_wisdom+ race_wisdom
  end

  def intelligence
    base_intelligence + klass_intelligence + race_intelligence
  end

  def charisma
    base_charisma + klass_charisma + race_charisma
  end

end
