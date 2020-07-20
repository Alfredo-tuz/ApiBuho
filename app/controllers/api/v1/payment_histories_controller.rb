class Api::V1::PaymentHistoriesController < ApplicationController
  
    # GET /payment_histories
    def index
      @PaymentHistory = PaymentHistory.all
      @response = []
      @PaymentHistory.each do |item|
        payment = item.payment
        @response.push({
          status: item[:status] == PaymentHistory::STATUS_PAYMENT_PAID ? "Pagado" : "No pagado",
          type_payment: payment[:type_payment] == Payment::TYPE_PAYMENT_TARJET ? "Tarjeta" : "Efectivo",
          subscription_name: payment.subscription[:name],
          type_subscription: payment.subscription[:type_subscription] == Subscription::TYPE_SUBSCRIPTION_YEARLY ? "Anual" : "Mensual",
          client_name: payment.client[:name],
          client_email: payment.client[:email],
        })
      end
      
      render json: {status: :ok,message:'Todos los pagos', data:@response}, status: 200
    end 
      
end
  