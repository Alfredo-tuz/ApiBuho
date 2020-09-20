class Client < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true,format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_uniqueness_of :email, message: 'Se encuentra repetido el correo.'   

    has_many :payments
    accepts_nested_attributes_for :payments

    def payment_history_log
        PaymentHistoryLog.new(PaymentHistory::STATUS_PAYMENT_NOT_PAID).save_payment_history
    end
end
