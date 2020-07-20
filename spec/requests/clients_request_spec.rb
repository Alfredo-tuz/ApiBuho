require 'rails_helper'

RSpec.describe Api::V1::ClientsController, type: :request do
    let(:valid_params) do
        { 
            "client"=>{
            "name"=>"My Widget",
            "email"=> "atuzgarza@gmail.com",
                "payments_attributes"=>[
                    {
                        "subscription_id"=>1,
                        "date_payment"=>"10/07/2020",
                        "type_payment"=>1
                    }
                ]
            } 
        }
    end
    it "creates a Client" do
        post "/api/v1/clients", params: valid_params
        expect(response.content_type).to eq("application/json; charset=utf-8")
        expect(response).to have_http_status(:unprocessable_entity)
    end
end
