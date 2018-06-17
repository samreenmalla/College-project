class IdeasController < ApplicationController

	def index
		@ideas = Idea.all;
	end

	def create
		@idea = Idea.create(idea_params)
		redirect_to root_path
	end

	def new
		@idea = Idea.new
	end

	def edit
		@idea = Idea.find(params[:id])
	end
	
	def update
		@idea = Idea.find(params[:id])
		if @idea.update(idea_params)
			flash[:success] = "The idea has been updated!"
			redirect_to root_path
		else
			 flash[:alert] = "Woops! Looks like there has been an error!"
			redirect_to edit_idea_path(params[:id])
		end
	end
	
	def destroy
		@idea = Idea.find(params[:id])
		@idea.destroy
		flash[:success] = "The idea was successfully deleted!"
		redirect_to root_path
	end
		
	private
	
		def idea_params
			params.require(:idea).permit(:description)
		end
end


