require 'rails_helper'

RSpec.describe Service, type: :model do
  context 'Fields' do
    it do
      is_expected.to have_field(:name).of_type(String)
      is_expected.to have_field(:price).of_type(Decimal)
    end
  end

  context 'Associations' do
    it do
      is_expected.to belong_to(:subscription).of_type(Subscription)
    end
  end

  context 'Validates' do
    it do
      is_expected.to validate_presence_of(:name)
      is_expected.to validate_presence_of(:price)
    end
  end
end
