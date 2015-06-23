FactoryGirl.define do
  factory :color do
    factory :valid_color do
      code "color code"
    end
    factory :invalid_color do
      code ""
    end
  end

end
