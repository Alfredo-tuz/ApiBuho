require 'rails_helper'

RSpec.describe PaymentHistory, type: :model do
  
  context 'Associations' do
    it do
      is_expected.to belong_to(:payment)
    end
  end
end
