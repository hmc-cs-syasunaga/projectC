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
			flash[:success] = "Success!"
			redirect_to appointments_path
		else
			flash[:error] = @appointment.errors.full_messages
  			redirect_to comment_index_path
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
	  										:date, :approved)
	  	end
end
