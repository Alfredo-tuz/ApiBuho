class Api::V1::PaymentHistoriesController < ApplicationController
  
    # GET /payment_histories
    def index
      @PaymentHistory = PaymentHistory.all
      render json: @PaymentHistory, include: "payment,payment.client,payment.subscription"
    end 
      
end
  