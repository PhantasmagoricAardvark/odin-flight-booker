class Airport < ApplicationRecord
	has_many :arrivals, class_name: "Flight", foreign_key: "finish_airport_id"
	has_many :departures, class_name: "Flight", foreign_key: "start_airport_id"

	validates :code, presence: true 
end
