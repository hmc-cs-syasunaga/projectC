class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def index
		@comments = Comment.all
	end

	def show
	  	@comment = Comment.find(params[:id])
	end

	def create
		@comment = Comment.new(permit_comment)
		if @comment.save
			flash[:success] = "Success!"
			redirect_to business_path(@comment.business_id)
		else
			flash[:error] = @comment.errors.full_messages
  			redirect_to business_path(@comment.business_id)
  		end
 	end

	private
	  	def permit_comment
	  		params.require(:comment).permit(:business_id, :user_id,
	  										:content, :rating)
	  	end
end
