class CreateFeats < ActiveRecord::Migration
  def change
    create_table :feats do |t|
      t.integer :character_id
      t.string :title
      t.string :description
      t.string :prerequisite
      t.string :benefit

      t.timestamps
    end
  end
end
