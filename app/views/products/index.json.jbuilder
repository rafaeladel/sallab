json.array!(@products) do |product|
  json.extract! product, :id, :origin, :brand, :tile_size, :color, :code, :description, :image
  json.url product_url(product, format: :json)
end
