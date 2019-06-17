class ApplicationController < ActionController::Base
	helper_method :format_date, :format_time

	def format_date(date)
  	date.to_date.strftime("%d/%m/%Y")
  end

  def format_time(datetime)
  	datetime.strftime("%d/%m/%Y %H:%M %Z")
  end
end
