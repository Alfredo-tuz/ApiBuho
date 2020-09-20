require 'rails_helper'

RSpec.describe Payment, type: :model do

  context 'Fields validate' do
    before(:all) do
      @payment = create(:payment, :with_payment_history)
    end

    it "is valid with valid attributes" do
      expect(@payment).to be_valid
    end

  end

  context 'Associations' do
    it do
      t = Payment.reflect_on_association(:payment_history)
      expect(t.macro).to eq(:has_one)

      t = Payment.reflect_on_association(:subscription)
      expect(t.macro).to eq(:belongs_to)

      t = Payment.reflect_on_association(:client)
      expect(t.macro).to eq(:belongs_to)
    end
  end

end
