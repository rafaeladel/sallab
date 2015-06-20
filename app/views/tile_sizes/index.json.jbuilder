json.array!(@tile_sizes) do |tile_size|
  json.extract! tile_size, :id, :height, :width
  json.url tile_size_url(tile_size, format: :json)
end
