class BusinessesController < ApplicationController
	
	def new
		@business = Business.new
	end

	def index
		@businesses = Business.all
	end

	def show
	  	@business = Business.find(params[:id])
	  	@comments = Comment.all
	end

	def my_business
		@businesses = Business.find_by_sql(
			["SELECT * FROM businesses WHERE user_id=?", current_user.id])

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

 	def find_comments_by_business
 		@comments = Comment.find(params[:business_id])
 	end

 	private
	  	def permit_business
	  		params.require(:business).permit(:name, :location, 
	  										 :category, :price, 
	  										 :image, :user_id)
	  	end
end
