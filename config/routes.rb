Taskapp::Application.routes.draw do
  resources :projects do
    resources :tasks, only: [:create, :destroy]
  end

  get '/project_data' => 'projects#project_data'
  post '/projects/:project_id/tasks/:id/toggle' => 'tasks#toggle'
  root 'projects#index'
end
