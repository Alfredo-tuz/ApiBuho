class Api::V1::ClientsController < ApplicationController
    before_action :set_clients, only: [:show, :update, :destroy]

  # GET /clients
  def index
    @clients = Client.all

    render json: @clients
  end

  # GET /clients/1
  def show
    render json: @client
  end

  # POST /clients
  def create
    @client = Client.new(client_params)
    if @client.save
      if payment_history PaymentHistory::STATUS_PAYMENT_PAID
        render json: {status: :created,data:@client,message:"Se ha creado correctamente"}, status: :created
      else
        render json: {status: :unprocessable_entity,data:@payment_history.errors,message:"Ha pasado un error"}, status: :unprocessable_entity  
      end
    else
      payment_history PaymentHistory::STATUS_PAYMENT_NOT_PAID
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  private
    def payment_history status
        is_save_history_payment = false
        if @client.payments.size > 0
            @client.payments.each do |item_payment|
                @payment_history = PaymentHistory.new(payment:item_payment,status:status)
                if @payment_history.save
                    is_save_history_payment = true
                end
            end
        end
        is_save_history_payment
    end
    

    # Use callbacks to share common setup or constraints between actions.
    def set_clients
      @client = Client.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :email,payments_attributes: [:id,:subscription_id,:date_payment,:type_payment])
    end
end
