class Passenger < ApplicationRecord
	has_many :booking_passengers
	has_many :bookings, through: :booking_passengers

	has_many :flights, through: :bookings

	validates :name, presence: true
end