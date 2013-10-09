class Maneuver < ActiveRecord::Base
  attr_accessible :character_id, :description, :effect, :title
end
