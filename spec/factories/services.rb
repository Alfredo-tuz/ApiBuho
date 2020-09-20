FactoryBot.define do
  factory :service do
    name { FFaker::NameTHEN.first_name }
    price { FFaker::Commerce.price }
    subscription { FactoryBot.create(:subscription) }
  end
end
