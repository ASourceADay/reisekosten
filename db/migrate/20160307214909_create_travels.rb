class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.string :travel_label
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
