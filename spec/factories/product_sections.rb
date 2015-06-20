FactoryGirl.define do
  factory :product_section do
    factory :valid_product_section do
      title_en "english title"
      title_ar "arabic title"
    end

    factory :invalid_product_section do
      title_en ""
    end
  end

end
