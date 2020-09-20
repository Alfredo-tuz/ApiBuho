FactoryBot.define do
  factory :subscription do
    name { FFaker::NameMX.first_name }
    is_active { 1 }
    type_subscription { FFaker::Numeric.integer(1..2) }

  end
end
