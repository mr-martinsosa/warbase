class AddExpToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :exp, :integer
  end
end
