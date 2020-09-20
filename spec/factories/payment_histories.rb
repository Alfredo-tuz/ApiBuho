FactoryBot.define do
  factory :payment_history do
    payment
    status { 1 }
  end
end
