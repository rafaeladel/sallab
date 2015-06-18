json.array!(@about_sections) do |about_section|
  json.extract! about_section, :id, :title, :content, :image
  json.url about_section_url(about_section, format: :json)
end
