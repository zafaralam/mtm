class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	# the show function is for displaying tasks
	def show
		@task = Task.find(params[:id])
	end

	def index
		@task = Task.all
	end

	def create
		@task = Task.new(user_params)
		if @task.save
			redirect_to @task
		else
			render 'new'			
		end
	end

	private
		def user_params
			params.require(:task).permit(:name, :description, :status, :priority)
		end


end
