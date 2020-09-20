FactoryBot.define do
  factory :client do
    name { FFaker::NameMX.first_name }
    email { FFaker::Internet.unique.email }

    trait :with_payments do
      transient { payments_count { 2 } }

      after(:create) do |client, evaluator|
        create_list(:payment, evaluator.payments_count,client: client)
      end
    end

  end
end
