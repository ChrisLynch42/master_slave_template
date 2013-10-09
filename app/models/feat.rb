class Feat < ActiveRecord::Base
  attr_accessible :benefit, :character_id, :description, :prerequisite, :title
end
