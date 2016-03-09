json.array!(@travels) do |travel|
  json.extract! travel, :id, :travel_label, :start_time, :end_time
  json.url travel_url(travel, format: :json)
end
