json.extract! calendar_event, :id, :date, :time_slot, :weather, :weather_modifier, :events, :event_requirements, :notes, :created_at, :updated_at
json.url calendar_event_url(calendar_event, format: :json)
