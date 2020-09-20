class PaymentHistoryLog  
    attr_accessor :payment, :status

    def initialize(payment, status)
      @payment = payment
      @status = status
    end

    def save_payment_history
      @payment_history = PaymentHistory.new(payment:@payment,status:@status)
      @payment_history.save
    end
end