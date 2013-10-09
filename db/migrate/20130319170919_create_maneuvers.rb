class CreateManeuvers < ActiveRecord::Migration
  def change
    create_table :maneuvers do |t|
      t.integer :character_id
      t.string :title
      t.string :description
      t.string :effect

      t.timestamps
    end
  end
end
