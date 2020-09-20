class PaymentHistorySerializer < ActiveModel::Serializer
  attributes :id,:status_pay
  belongs_to :payment, serializer: PaymentSerializer

  def status_pay
    object.status == PaymentHistory::STATUS_PAYMENT_PAID ? "Pagado" : "No pagado"
  end

end
