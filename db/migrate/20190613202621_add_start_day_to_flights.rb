class AddStartDayToFlights < ActiveRecord::Migration[5.2]
  def change
    add_column :flights, :start_day, :date
  end
end
