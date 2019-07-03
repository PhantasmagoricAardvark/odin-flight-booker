class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :start_airport
      t.integer :finish_airport
      t.datetime :start_time
      t.date :start_day
      t.string :duration
      t.references :passenger, foreign_key: true

      t.timestamps
    end
  end
end
