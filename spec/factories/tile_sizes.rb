FactoryGirl.define do
  factory :tile_size do
    factory :valid_tile_size do
      height 1
      width 1
    end

    factory :invalid_tile_size do
      height 0
      width 0
    end
  end

end
