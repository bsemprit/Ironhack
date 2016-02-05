class CommentsController < ApplicationController

	def index
		@concert = Concert.find_by(id: params[:concert_id])
		@comments = @concert.comments.all
	end

	def new
		@concert = concert.find_by(id: params[:concert_id])
		@comment= @concert.comment.new
	end

	def create
		@concert = Concert.find_by(id: params[:concert_id])
		@comment = @concert.comments.new(comment_params)

		if @comment.save
			redirect_to concert_path(@concert)
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :email, :body)
	end
end
