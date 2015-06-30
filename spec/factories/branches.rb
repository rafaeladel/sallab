FactoryGirl.define do
  factory :branch do
    phone "MyString"
    lat "MyString"
    long "MyString"

    factory :valid_branch do
      address_en "english MyText"
      address_ar "arabic mytext"
      association :region, factory: :valid_region
    end

    factory :invalid_branch do
      address_en ""
      address_ar ""
    end
  end
end
