FactoryGirl.define do
  factory :region do
    factory :valid_region do
      title_en "english MyString"
      title_ar "arabic mystring"
    end

    factory :invalid_region do
      title_en ""
      title_ar ""
    end
  end

end
