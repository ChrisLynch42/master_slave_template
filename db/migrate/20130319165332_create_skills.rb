class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :character_id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
