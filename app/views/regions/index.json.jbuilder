json.array!(@regions) do |region|
  json.extract! region, :id, :title
  json.url region_url(region, format: :json)
end
