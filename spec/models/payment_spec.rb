require 'rails_helper'

RSpec.describe Payment, type: :model do

  context 'Associations' do
    it do
      is_expected.to belong_to(:client).of_type(Client)
      is_expected.to belong_to(:subscription).of_type(Subscription)
      is_expected.to has_one(:payment_history).of_type(PaymentHistory)
    end
  end

  context 'Validates' do
    it do
      is_expected.to validate_presence_of(:type_payment)
      is_expected.to validate_presence_of(:date_payment)
    end
  end

end
