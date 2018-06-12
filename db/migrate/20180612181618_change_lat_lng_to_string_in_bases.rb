class ChangeLatLngToStringInBases < ActiveRecord::Migration[5.2]
  def change
    change_column :bases, :lat, :string
    change_column :bases, :lng, :string
  end
end
