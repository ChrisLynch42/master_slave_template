class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do | t |
      t.string :title
      t.float :cost
      t.string :description
      t.timestamps
    end
  end
end



