require 'rails_helper'

RSpec.describe UserRewardsController, type: :controller do

  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
  




  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/user_rewards/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /create" do
  #   it "returns http success" do
  #     get "/user_rewards/create"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /destory" do
  #   it "returns http success" do
  #     get "/user_rewards/destory"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /update" do
  #   it "returns http success" do
  #     get "/user_rewards/update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
