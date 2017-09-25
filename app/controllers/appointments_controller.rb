class AppointmentsController < ApplicationController
	before_action :set_appointment, only:[:edit, :show, :update]

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

 	def edit
 		
 	end

 	def update
 		############################
 		#### I have to fix this ####
 		############################
 		respond_to do |format|
	      if @appointment.update(permit_appointment)
	        format.html { redirect_to @appointment, notice: 'User info was successfully updated.' }
	        format.json { render :show, status: :ok, location: @appointment }
	      else
	        format.html { render :edit }
	        format.json { render json: @appointment.errors, status: :unprocessable_entity }
	       end
	    end
 	end

	private
		def set_appointment
			@appointment = Appointment.find(params[:id])
			
		end

	  	def permit_appointment
	  		params.require(:appointment).permit(:start_time, :end_time,
	  										:date, :approved, :user_id,
	  										:busines_id)
	  	end
end
