class Armor < ActiveRecord::Base
  attr_accessible :armor_bonus, :character_id, :cost, :description, :don, :remove, :speed, :title, :weight
end
