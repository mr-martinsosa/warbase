class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :experience, :integer
    add_column :users, :level, :integer
    add_column :users, :hp, :integer
    add_column :users, :atk, :integer
    add_column :users, :def, :integer
  end
end
