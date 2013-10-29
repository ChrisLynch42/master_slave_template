class Spell < ActiveRecord::Base
  validates :domain_id, { :presence => true, :numericality => { :only_integer => true, :greater_than => 0 }}
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :title,  :description,  :level,  :domain_id,  :range,  :damage,  :requirement,  :effect,  :special,  :ritual
  belongs_to :domain
  has_many :characters, through: :character_spells
  has_many :classifications, through: :classification_spells
  ###Do not edit the above 







end

