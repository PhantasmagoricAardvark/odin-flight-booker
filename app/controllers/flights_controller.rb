class FlightsController < ApplicationController
  def index
  	@flights = Flight.all
  	@airports = Airport.all.map { |e| [e.code,e.id]  }
  	@passenger_amount = [["1",1], ["2",2], ["3",3], ["4",4]]
  	@available_dates = Flight.available_dates
  	@booking = Booking.new

  	if params[:date]
  		@flights = Flight.search_flights(params[:date],params[:from_airport], params[:to_airport])
  	else
  		@flights = nil
  	end
  end



  private

  def flight_params
  end
end
