class Spell < ActiveRecord::Base
  attr_accessible :character_id, :damage, :description, :effect, :level, :prepared, :range, :requirement, :ritual, :special, :title, :domain
end
