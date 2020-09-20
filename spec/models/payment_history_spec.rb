require 'rails_helper'

RSpec.describe PaymentHistory, type: :model do
  
  context 'Fields validate' do
    before(:all) do
      @payment_history = create(:payment, :with_payment_history)
    end

    it "is valid with valid attributes" do
      expect(@payment_history).to be_valid
    end

  end

  context 'Associations' do
    it do
      t = PaymentHistory.reflect_on_association(:payment)
      expect(t.macro).to eq(:belongs_to)
    end
  end
end
