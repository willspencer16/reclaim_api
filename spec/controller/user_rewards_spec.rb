require 'rails_helper'

RSpec.describe UserRewardsController, type: :controller do

  let(:valid_attributes) do
    {
      user_id: 1,
      reward_id: 1,
      redeemed: false
    }
  end


  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "GET #show" do
    it "returns http success" do
      user_reward = UserReward.create(valid_attributes)
      get :show, params: { id: user_reward.to_param }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new user_reward' do
        expect do
          post :create, params: { user_reward: valid_attributes }
        end.to change(UserReward, :count).by(1)
      end
    end
  end

  describe "DELETE #destory" do
    it "deletes user_reward" do
      user_reward = UserReward.create(valid_attributes)
      expect do
        delete :destroy, params: { id: user_reward.to_param }
      end.to change(UserReward, :count).by(-1)
    end
  end

  describe "PUT #update" do
    let(:new_attributes) do
      {
        redeemed: true
      }
    end
    it "returns updated redeemed status" do
      user_reward = UserReward.create(valid_attributes)
      put :update, params: { id: user_reward.to_param, user_reward: new_attributes }
      user_reward.reload
      expect(user_reward.attributes).to include('redeemed' => true)
    end
  end

end
