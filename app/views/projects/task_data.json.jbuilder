json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :deadline, :project_id
  json.url task_data_url(task_data, format: :json)
end
