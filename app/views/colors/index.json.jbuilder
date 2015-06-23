json.array!(@colors) do |color|
  json.extract! color, :id, :code
  json.url color_url(color, format: :json)
end
