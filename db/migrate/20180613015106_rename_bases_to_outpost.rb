class RenameBasesToOutpost < ActiveRecord::Migration[5.2]
  def change
    rename_table :bases, :outposts
  end
end
