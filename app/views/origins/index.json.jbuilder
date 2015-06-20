json.array!(@origins) do |origin|
  json.extract! origin, :id, :title
  json.url origin_url(origin, format: :json)
end
