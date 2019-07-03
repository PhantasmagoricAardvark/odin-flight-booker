# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.delete_all
Flight.delete_all
Passenger.delete_all


Airport.create(code: "SFO")
Airport.create(code: "NYC")
Airport.create(code: "MIA")

Flight.create(start_airport_id: 1, finish_airport_id: 3, start_time: "16-06-2019 15:00:00", start_day: "16-06-2019", duration: "3h")
Flight.create(start_airport_id: 2, finish_airport_id: 3, start_time: "22-06-2019 21:00:00", start_day: "22-06-2019", duration: "1h30m")
Flight.create(start_airport_id: 1, finish_airport_id: 3, start_time: "22-06-2019 19:00:00", start_day: "22-06-2019", duration: "3h")
Flight.create(start_airport_id: 3, finish_airport_id: 1, start_time: "22-06-2019 19:00:00", start_day: "22-06-2019", duration: "3h")
Flight.create(start_airport_id: 1, finish_airport_id: 3, start_time: "22-06-2019 16:00:00", start_day: "22-06-2019", duration: "3h")

p1 = Passenger.create(name: "foobar", email: "foo@bar.com")
p2 = Passenger.create(name: "seba" ,email: "seba@gmail.com")
=begin

booking = Booking.create(flight_id: 1, passenger_amount: "2")
booking.passengers<<p1
booking.passengers<<p2

=end