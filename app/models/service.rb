class Service < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0 }

  
  belongs_to :subscription
end
