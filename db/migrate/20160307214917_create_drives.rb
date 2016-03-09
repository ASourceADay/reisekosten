class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.string :drive_label
      t.integer :km_distance
      t.integer :travel_id

      t.timestamps
    end
  end
end
