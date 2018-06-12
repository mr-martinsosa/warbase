class UpdateBasesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :bases, :user_id, :integer
  end
end
