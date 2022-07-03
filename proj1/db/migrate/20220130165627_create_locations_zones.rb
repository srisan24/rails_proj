class CreateLocationsZones < ActiveRecord::Migration[6.1]
  def change
    create_join_table :locations,:zones do |t|
      t.index [:location_id,:zone_id]
      t.index [:zone_id,:location_id]
    end
  end
end
