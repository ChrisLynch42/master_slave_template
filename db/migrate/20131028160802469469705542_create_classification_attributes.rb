class CreateClassificationAttributes < ActiveRecord::Migration
  def change
    create_table :classification_attributes do | t |
      t.integer :classification_id
      t.string :title
      t.integer :level
      t.string :description
      t.timestamps
    end
  end
end



