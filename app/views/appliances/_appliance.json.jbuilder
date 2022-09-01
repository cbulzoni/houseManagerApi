json.extract! appliance, :id, :appliance_type, :category, :last_serviced, :make, :model, :notes, :service_due, :year, :contact_id, :house_id, :created_at, :updated_at
json.url appliance_url(appliance, format: :json)
