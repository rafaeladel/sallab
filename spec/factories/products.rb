FactoryGirl.define do
  factory :product do
    association :origin, factory: :valid_origin
    association :brand, factory: :valid_brand
    association :tile_size, factory: :valid_tile_size
    color "#23214"
    description_en "english desc"
    description_ar "arabic desc"
    image "my image"

    factory :valid_product do
      code "22992"
    end

    factory :invalid_product do
      code ""
    end
  end
end
