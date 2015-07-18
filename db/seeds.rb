pages_with_info = [:home, :about, :product_section, :product, :branch]

pages_with_info.each do |p|
  PageInfo.create(general_title: "#{p.to_s} title", general_description: "#{p.to_s} description", general_keywords: "#{p.to_s}, keywords, comma, separated", info_type: p)
end

GeneralInfo.create
