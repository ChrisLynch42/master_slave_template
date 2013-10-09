class RenameSpellColumnTypeToDomain < ActiveRecord::Migration
  def up
    rename_column :spells, :type, :domain
  end

  def down
  end
end
