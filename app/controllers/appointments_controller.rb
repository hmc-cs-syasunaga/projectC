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
			flash[:success] = "Success!"
			redirect_to appointments_path
		else
			flash[:error] = @appointment.errors.full_messages
  			redirect_to comment_index_path
  		end
 	end

	private
	  	def permit_appointment
	  		params.require(:appointment).permit(:busines_id, :user_id,
	  										:start_time, :end_time,
	  										:date)
	  	end
end
