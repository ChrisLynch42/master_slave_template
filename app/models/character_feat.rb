class Character_feat < ActiveRecord::Base
  ###Do not edit the below 
  ###Begin RDiaTool Code 
  attr_accessible  :character_id,  :feat_id
  belongs_to :characters
  belongs_to :feats
  ###Do not edit the above 

end

