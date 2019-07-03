class Flight < ApplicationRecord
  belongs_to :start_airport, class_name: "Airport"
  belongs_to :finish_airport, class_name: "Airport" 

  has_many :bookings
  has_many :passengers, through: :bookings

  def self.search_flights(date, from_airport, to_airport)
  	where("start_day = ? AND start_airport_id = ? AND finish_airport_id = ?", date, from_airport, to_airport)
  end

  def self.available_dates
  	Flight.all.map { |e| [e.start_day.strftime("%d/%m/%Y"),e.start_day] }.uniq { |e| e.first	}
  end
  
end
