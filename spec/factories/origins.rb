FactoryGirl.define do
  factory :origin do
    factory :valid_origin do
      title_en "english title"
      title_ar "arabic title"
    end

    factory :invalid_origin do
      title_en ""
    end
  end

end
