class RemoveDurationFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :start_airport, :integer
    remove_column :bookings, :finish_airport, :integer
    remove_column :bookings, :start_time, :datetime
    remove_column :bookings, :start_day, :date
    remove_column :bookings, :duration, :string
    remove_column :bookings, :created_at, :datetime
    remove_column :bookings, :updated_at, :datetime
  end
end
