json.extract! project, :id, :date_completed, :date_started, :description, :estimated_cost, :notes, :priority, :status, :contact_id, :house, :references, :created_at, :updated_at
json.url project_url(project, format: :json)
