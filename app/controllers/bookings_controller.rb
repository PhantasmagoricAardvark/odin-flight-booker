class BookingsController < ApplicationController
  def new
  	@booking = Booking.new
  	@passengers = (params[:passenger_amount].to_i).times { Passenger.new }
    if params[:chosen_flight]
  		@chosen_flight = Flight.find(params[:chosen_flight])
  	end
  end

  def create
		@booking = Booking.new(flight_id: params[:booking][:flight_id], passenger_amount: params[:booking][:passenger_amount])
    i = 0
    while i < (params[:booking][:passenger_amount]).to_i
      @booking.passengers.build(name: params[:booking][:booking_passenger][:passenger][i][:name], email: params[:booking][:booking_passenger][:passenger][i][:email])
      i +=1
    end
		if @booking.save
      i = 0
      while i < (params[:booking][:passenger_amount]).to_i
        PassengerMailer.with(passenger: @booking.passengers[i], booking: @booking).thank_you_email.deliver_later
        i += 1
      end
      flash[:success] = "Booking created!"
      redirect_to @booking
		else
			flash.now[:error] = @booking.errors.full_messages
		end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
  end

  private 
    def booking_params
      params.require(:booking).permit(:flight_id, :passenger_amount, booking_passengers_attributes: [passenger_attributes:[:name, :email] ] )
    end
end
