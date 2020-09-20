class Payment < ApplicationRecord
  belongs_to :client
  belongs_to :subscription
  has_one :payment_history

  validates :type_payment,:date_payment, presence: true

  TYPE_PAYMENT_TARJET = 1
  TYPE_PAYMENT_CASH = 2

  after_create :payment_history_log
  
  private

    def payment_history_log
      payment_log = PaymentHistoryLog.new(self,PaymentHistory::STATUS_PAYMENT_PAID)
      payment_log.save_payment_history
    end 
end
