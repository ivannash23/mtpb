json.extract! trip_plan, :id, :title, :summary, :created_at, :updated_at
json.url trip_plan_url(trip_plan, format: :json)
