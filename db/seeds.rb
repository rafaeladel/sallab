pages_with_info = [:home, :about, :product_section, :product, :branch, :gallery, :contact, :item, :job, :promotion, :project]

pages_with_info.each do |p|
  PageInfo.create(general_title: "#{p.to_s} title", general_description: "#{p.to_s} description", general_keywords: "#{p.to_s}, keywords, comma, separated", info_type: p)
end

GeneralInfo.create
User.create(email: "sallab@staff.com", password: 12345678)