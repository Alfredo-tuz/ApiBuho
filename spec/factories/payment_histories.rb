FactoryBot.define do
  factory :payment_history do
    payment { FactoryBot.create(:payment) }
    status { 1 }
  end
end
