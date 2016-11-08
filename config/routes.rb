Taskapp::Application.routes.draw do
  get 'calendar/index'

  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end

  get '/project_data' => 'projects#project_data'
  get '/task_data/:project_id' => 'tasks#task_data'
  post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
  get '/event_data' => 'calendar#event_data'
  root 'projects#index'
end
