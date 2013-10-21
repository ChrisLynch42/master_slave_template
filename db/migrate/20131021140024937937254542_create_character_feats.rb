class CreateCharacterFeats < ActiveRecord::Migration
  def change
    create_table :character_feats do | t |
      t.integer :character_id
      t.integer :feat_id
      t.timestamps
    end
  end
end



