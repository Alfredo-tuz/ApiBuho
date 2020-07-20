require 'rails_helper'

RSpec.describe Api::V1::PaymentHistoriesController, type: :request do
    describe "GET #index" do
        before do
          get '/api/v1/payment_histories'
        end
        it "returns http success" do
          expect(response).to have_http_status(:success)
        end

        it "JSON body response contains expected recipe attributes" do
          json_response = JSON.parse(response.body)
          expect(json_response.keys).to match_array(["data","message","status"])
        end
      end
end
