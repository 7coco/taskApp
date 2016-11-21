class CalendarController < ApplicationController
  def index
    @projects = Project.all
  end

  def event_data
    @tasks = Task.all
    @events = []
    @tasks.each do |task|
      next if task.deadline == nil
      @project = Project.find(task.project_id)
      @events.push({
        title: task.title,
        start: task.deadline,
        end: task.deadline,
        allDay: false,
        color: @project.color,
        # project_id: task.project_id
      })
    end
    render json:@events
  end
end
