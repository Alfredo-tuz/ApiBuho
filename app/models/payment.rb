class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :subscription
  has_one :payment_history

  TYPE_PAYMENT_TARJET = 1
  TYPE_PAYMENT_CASH = 2
end
