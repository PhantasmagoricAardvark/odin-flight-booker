class PassengerMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def thank_you_email
		@passenger = params[:passenger]
		@booking = params[:booking]
		mail(to: @passenger.email, subject: "You have booked your ticket!")
	end

end
