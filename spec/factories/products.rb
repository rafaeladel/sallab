FactoryGirl.define do
  factory :product do
    description_en "english desc"
    description_ar "arabic desc"
    image "my image"

    association :origin, factory: :valid_origin
    association :brand, factory: :valid_brand
    association :tile_size, factory: :valid_tile_size

      after(:create) do |product|
      product.colors << FactoryGirl.create(:valid_color)
      product.colors << FactoryGirl.create(:valid_color)
      product.colors << FactoryGirl.create(:valid_color)
    end

    factory :valid_product do
      code "22992"
    end

    factory :invalid_product do
      code ""
    end
  end
end
