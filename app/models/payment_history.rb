class PaymentHistory < ApplicationRecord
    belongs_to :payment
    STATUS_PAYMENT_PAID = 1
    STATUS_PAYMENT_NOT_PAID = 2
    
end
