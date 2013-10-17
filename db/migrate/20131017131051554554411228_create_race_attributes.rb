class CreateRaceAttributes < ActiveRecord::Migration
  def change
    create_table :race_attributes do | t |
      t.integer :race_id
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end



