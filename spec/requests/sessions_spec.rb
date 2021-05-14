require 'json'
require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /create" do
    it "returns http success" do
      User.create({ username: "testUser", password:"testPassword"})

      expected_output = {
        status: :created,
        logged_in: true,
        user: "testUser"
      }

      post "/api/v1/sessions", params: { user: { username: "testUser", password: "testPassword"} }

      # post "/api/v1/sessions"

      expect(response).to be_successful
      # expect(response).not_to have_http_status(401)
      expect(response.body).to eq(expected_output.to_json)
    end

    it 'returns a 401 status if user is not authenticated' do
      User.create({ username: "testUser", password:"testPassword"})

      expected_output = {
        status: 401
      }

      post "/api/v1/sessions", params: { user: { username: "testUser", password: "wrongPassword"} }

      # post "/api/v1/sessions"

      expect(response).to be_successful
      # expect(response).not_to have_http_status(401)
      expect(response.body).to eq(expected_output.to_json)
    end
  end
end
