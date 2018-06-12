class ChangeLatLngToFloatInBases < ActiveRecord::Migration[5.2]
  def change
    change_column :bases, :lat, :float
    change_column :bases, :lng, :float
  end
end
