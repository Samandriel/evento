json.array!(@events) do |event|
  json.extract! event, :id, :title, :start_date, :end_date, :location, :agenda, :address, :organizer_id, :posted, :updated
  json.url event_url(event, format: :json)
end
