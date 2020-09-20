FactoryBot.define do
  factory :payment do
    client { FactoryBot.create(:client) }
    subscription { FactoryBot.create(:subscription) }
    type_payment { 1 }
    payment_history { FactoryBot.create(:payment_history) }
  end
end
