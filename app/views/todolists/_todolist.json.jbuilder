json.extract! todolist, :id, :task, :completed, :created_at, :updated_at
json.url todolist_url(todolist, format: :json)
