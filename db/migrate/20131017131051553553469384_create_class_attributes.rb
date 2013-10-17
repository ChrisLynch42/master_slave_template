class CreateClassAttributes < ActiveRecord::Migration
  def change
    create_table :class_attributes do | t |
      t.integer :class_id
      t.string :title
      t.integer :level
      t.string :description
      t.timestamps
    end
  end
end



