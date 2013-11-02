class TasksController < ApplicationController
	def new
		@task = Task.new
	end

	# the show function is for displaying tasks
	def show
		@task = Task.find params[:id]
	end
	
	def index
		@tasks = Task.all
	end


	def create
		@task = Task.new(user_params)
		if @task.save
			redirect_to @task
		else
			render 'new'			
		end
	end
	
	def edit
		@task = Task.find(params[:id])
	end
	
	def update
		# first get the task that needs to be edited
		@task = Task.find params[:id]
		
		#update the attributes of the task
		@task.update_attributes(user_params)
		
		redirect_to task_path @task.id
	end
	
	def destroy
		@task = Task.find params[:id]
		@task.destroy!
		redirect_to tasks_path
	end

	private
		def user_params
			params.require(:task).permit(:name, :description, :status, :priority)
		end


end
