FactoryBot.define do
  factory :item do
    name            { '商品名' }
    description     { '説明文' }
    category_id     { 2 }
    condition_id    { 2 }
    delivery_fee_id { 2 }
    prefecture_id   { 2 }
    shipping_day_id { 2 }
    price           { 1000 }
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
