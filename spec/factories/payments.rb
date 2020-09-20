FactoryBot.define do
  factory :payment do
    client
    subscription
    type_payment { 1 }
    date_payment { DateTime.current }

    
    trait :with_payment_history do
      after(:create) do |account|
        create(
          :payment_history,
          status: 1
        )
      end
    end

  end
end
