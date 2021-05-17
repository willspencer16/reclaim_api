require 'rails_helper'

RSpec.describe UserRewardController, type: :controller do

  let(:valid_attributes) do
    {
      reward_id: 3,
      user_id: 3,
      redeemed: false
    }
  end

  let(:invalid_attributes) do
    { reward_id: nil }
  end


  describe "GET /index" do
    before do
      get :index
    end

    it "returns http success" do
      get "/user_reward/index"
      expect(response).to have_http_status(:success)
    end
  end


  
  
  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/user_reward_join/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /create" do
  #   it "returns http success" do
  #     get "/user_reward_join/create"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/user_reward_join/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /update" do
  #   it "returns http success" do
  #     get "/user_reward_join/update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
