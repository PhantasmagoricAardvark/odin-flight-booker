# Flight Booker

TOP tutorial for the flight booker. The Passenger has many Bookings. The Flight model has two ids referencing the Airport model, start_airport and finish_airport ids.

1. Each passenger has many bookings through bookingPassenger, and has many flights through bookings. 

2. Each booking has many passengers through bookingPassenger, and also belongs to a flight.

3. A flight has many bookings, and has many passengers through bookings.

The bookingPassenger model is the join model for the passenger and booking relationship.
