FactoryBot.define do
  factory :payment do
    client { FactoryBot.create(:client) }
    subscription { FactoryBot.create(:subscription) }
    type_payment { FFaker::Numeric.integer(1..2) }
    payment_history { FactoryBot.create(:payment_history) }
  end
end
