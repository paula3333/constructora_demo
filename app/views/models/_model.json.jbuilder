json.extract! model, :id, :User, :email, :nombre, :rol, :created_at, :updated_at
json.url model_url(model, format: :json)
