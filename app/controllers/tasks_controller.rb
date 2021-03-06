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
    @task = Task.new(task_params)
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
	
    #update the attributes of the task inside the database.
    @task.update_attributes(task_params)
	
    redirect_to task_path @task.id
  end
	
  def destroy
    @task = Task.find params[:id]
    @task.destroy!
    redirect_to tasks_path
  end

  private
	
    # The method below is used to permit params passed in rails via the url
    def task_params
      params.require(:task).permit(:name, :description, :status, :priority,:created_by,:assigned_to,:estimated_hours,:actual_hours,:category,:sub_category)
    end
end
