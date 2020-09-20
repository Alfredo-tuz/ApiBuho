require 'rails_helper'

RSpec.describe Client, type: :model do
  context 'Fields' do
    it { should have_db_column(:name) }
  end

  context 'Associations' do
    it do
      is_expected.to have_many(:payments)
    end
  end

  context 'Validates' do
    it do
      is_expected.to validate_presence_of(:name)
      is_expected.to validate_presence_of(:email)
      is_expected.to validate_uniqueness_of(:email)
    end
  end
end
