class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :model
      t.string :code
      t.belongs_to :driver
      t.timestamps
    end
  end
end
