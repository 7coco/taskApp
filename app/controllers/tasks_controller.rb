class TasksController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(tasks_params)
    redirect_to project_path(@project.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(params[:project_id])
  end

  def toggle
    render nothing: true
    @task = Task.find(params[:id])
    @task.done = !@task.done
    @task.save
  end

  def task_data
    @project = Project.find(params[:project_id])
    render json: @project.tasks
  end

  private
    def tasks_params
      params.permit(:title, :deadline)
    end
end
