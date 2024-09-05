class CreateRides < ActiveRecord::Migration[7.0]
  def change
    create_table :rides do |t|
      t.belongs_to :driver
      t.belongs_to :passenger
      t.string :pickup_location
      t.string :dropoff_location
      t.string :status
      t.string :fare

      t.timestamps
    end
  end
end
