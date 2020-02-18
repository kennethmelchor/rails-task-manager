class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
     @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params_task)
    @task.save
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    redirect_to task_path(@task)
  end



  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to task_path(@task)
  end

  private
    def params_task
    params.require(:task).permit(:name)
  end
end
