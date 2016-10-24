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
    p @task
    @task.done = !@task.done
    p @task.done
    @task.save
  end

  private
    def tasks_params
      params[:task].permit(:title, :deadline)
    end
end
