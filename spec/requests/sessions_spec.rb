require 'json'
require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /create" do
    it "returns http success" do
      user = User.create({ username: "testUser", password:"testPassword"})

      expected_output = {
        status: :created,
        logged_in: true,
        user: "testUser",
        user_id: user.id
      }

      post "/api/v1/sessions", params: { user: { username: "testUser", password: "testPassword"} }

      expect(response).to be_successful
      expect(response.body).to eq(expected_output.to_json)
    end

    it 'returns a 401 status if user is not authenticated' do
      User.create({ username: "testUser", password:"testPassword"})

      expected_output = {
        status: 401
      }

      post "/api/v1/sessions", params: { user: { username: "testUser", password: "wrongPassword"} }

      expect(response).to be_successful
      # expect(response).not_to have_http_status(401)
      expect(response.body).to eq(expected_output.to_json)
    end
  end

  describe "DELETE /logout" do
    it "stops the session" do
      User.create({ username: "testUser", password:"testPassword"})

      expected_output = {
        status: :session_destroyed,
        logged_in: false
      }

      post "/api/v1/sessions", params: { user: { username: "testUser", password: "testPassword"} }

      get "/api/v1/logout"

      expect(response).to be_successful
      expect(response.body).to eq(expected_output.to_json)
    end
  end
end
