FactoryGirl.define do
  factory :banner do
    factory :valid_banner do
    	image "image_name"
    	slogan1_en "test slogan1"
    	slogan2_en "test slogan2"
    	slogan1_ar "arabic slogan1"
    	slogan2_ar "arabic slogan2"
    	banner_type "home"
    	association :gallery, factory: :valid_gallery
    end
  end

end
