class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :type_payment, :date_payment
  belongs_to :client, serializer: ClientSerializer
  belongs_to :subscription, serializer: SubscriptionSerializer
  has_one :payment_history, serializer: PaymentHistorySerializer
end
