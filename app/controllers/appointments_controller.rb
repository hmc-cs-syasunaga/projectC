class AppointmentsController < ApplicationController
	def new
		@appointment = Appointment.new
	end

	def index
		@appointments = Appointment.all
	end

	def show
	  	@appointment = Appointment.find(params[:id])
	end

	def create
		@appointment = Appointment.new(permit_appointment)
		if @appointment.save
			flash[:success] = "Success! Check the 'My Appointments' tab 
			above to keep track of your appointments!"
			redirect_to business_path(@appointment.busines_id)
		else
			flash[:error] = @appointment.errors.full_messages
  		end
 	end

	private
	  	def permit_appointment
	  		params.require(:appointment).permit(:busines_id, :user_id,
	  										:start_time, :end_time,
	  										:date)
	  	end
end
