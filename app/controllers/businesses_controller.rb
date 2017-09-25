class BusinessesController < ApplicationController

	def new
		@business = Business.new
	end

	def index
		@businesses = Business.all
	end

	def show
	  	@business = Business.find(params[:id])
	end

	def create
		@business = Business.new(permit_business)
		if @business.save
			flash[:success] = "Success!"
			redirect_to(@business)
		else
			flash[:error] = @business.errors.full_messages
  			redirect_to new_business_path
  		end
 	end

 	private
	  	def permit_business
	  		params.require(:business).permit(:name, :location, 
	  										 :category, :price, 
	  										 :image, :user_id)
	  	end
end
