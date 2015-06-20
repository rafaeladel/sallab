json.array!(@product_sections) do |product_section|
  json.extract! product_section, :id, :title
  json.url product_section_url(product_section, format: :json)
end
