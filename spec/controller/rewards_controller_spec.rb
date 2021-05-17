require 'rails_helper'

RSpec.describe RewardsController, type: :controller do
  let(:valid_attributes) do
    {
      reward_name: "Milk",
      reward_content: "5% off your next pint of milk",
      business_id: 1
    }
  end

  let(:invalid_attributes) do
    { reward_name: nil }
  end

  describe 'GET #index' do
    before do
      get :index
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      reward = Reward.create(valid_attributes)
      get :show, params: { id: reward.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new stamp' do
        expect do
          post :create, params: { reward: valid_attributes }
        end.to change(Reward, :count).by(1)
      end
    end
  end

  describe 'PUT #update' do
    let(:new_attributes) do
      {
        reward_name: "Milk",
        reward_content: "10% off your next pint of milk",
        business_id: 1
      }
    end

    it 'updates reward content' do
      reward = Reward.create(valid_attributes)
      put :update, params: { id: reward.to_param, reward: new_attributes }
      reward.reload
      expect(reward.attributes).to include('reward_content' => "10% off your next pint of milk")
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes a reward' do
      reward = Reward.create(valid_attributes)
      expect do
        delete :destroy, params: { id: reward.to_param }
      end.to change(Reward, :count).by(-1)
    end
  end
end
