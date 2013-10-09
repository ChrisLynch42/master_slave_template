class Weapon < ActiveRecord::Base
  attr_accessible :attack_bonus, :character_id, :damage, :damage_bonus, :description, :title
end
