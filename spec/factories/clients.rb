FactoryBot.define do
  factory :client do
    name { FFaker::NameMX.first_name }
    email { FFaker::Internet.unique.email }
  end
end
