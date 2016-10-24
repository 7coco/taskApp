json.array!(@projects) do |project|
  json.extract! project, :id, :title
  json.url project_data_url(project_data, format: :json)
end
