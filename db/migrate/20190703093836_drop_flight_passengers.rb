class DropFlightPassengers < ActiveRecord::Migration[5.2]
  def change
  	drop_table :flight_passengers
  end
end
