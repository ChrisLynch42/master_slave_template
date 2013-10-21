class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do | t |
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end



