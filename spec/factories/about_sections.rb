FactoryGirl.define do
  factory :about_section do
    factory :valid_about_section do
      title_ar "arabic MyString"
      title_en "english MyString"
      content_ar "arabic MyText"
      content_en "english MyText"

      image "MyString"
    end

    factory :invalid_about_section do
      title_en ""
      content_en ""
      image ""
    end
  end
end
