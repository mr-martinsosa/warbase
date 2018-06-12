class CreateBases < ActiveRecord::Migration[5.2]
  def change
    create_table :bases do |t|
      t.string :name
      t.integer :lat
      t.integer :lng
      t.integer :hp
      t.integer :atk
      t.integer :def

      t.timestamps
    end
  end
end
