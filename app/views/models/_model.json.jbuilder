json.extract! model, :id, :name, :designer, :created_at, :updated_at, :file
json.url model_url(model, format: :json)