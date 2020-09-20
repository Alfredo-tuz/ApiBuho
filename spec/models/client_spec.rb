require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'Fields validate' do
    before(:all) do
      @client = create(:client)
    end

    it "is valid with valid attributes" do
      expect(@client).to be_valid
    end

  end

  context 'Associations' do
    it do
      t = Client.reflect_on_association(:payments)
      expect(t.macro).to eq(:has_many)
    end
  end

end
