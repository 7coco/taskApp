class CalendarController < ApplicationController
  def index
    @projects = Project.all
  end

  def event_data
    @tasks = Task.all
    @events = []
    @tasks.each do |task|
      next if task.deadline == nil
      @events.push({
        title: task.title,
        start: task.deadline,
        end: task.deadline,
        allDay: false,
        # project_id: task.project_id
      })
    end
    p @events
    render json:@events
  end
end
