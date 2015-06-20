FactoryGirl.define do
  factory :brand do
    factory :valid_brand do
      title_en "english title"
      title_ar "arabic title"
    end

    factory :invalid_brand do
      title_en ""
    end  end

end
