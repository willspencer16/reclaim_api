# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StampsController, type: :controller do
  let(:valid_attributes) do
    {
      user_id: 1,
      business_id: 1,
      redeemed: false,
      created_at: DateTime.now,
      updated_at: DateTime.now
    }
  end

  let(:invalid_attributes) do
    { user_id: nil }
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
      stamp = Stamp.create(valid_attributes)
      get :show, params: { id: stamp.to_param }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new stamp' do
        expect do
          post :create, params: { stamp: valid_attributes }
        end.to change(Stamp, :count).by(1)
      end
    end
  end

  describe 'PUT #update' do
    let(:new_attributes) do
      {
        user_id: 1,
        business_id: 1,
        redeemed: true,
        created_at: DateTime.now,
        updated_at: DateTime.now
      }
    end

    it 'updates redeemed status' do
      stamp = Stamp.create(valid_attributes)
      put :update, params: { id: stamp.to_param, stamp: new_attributes }
      stamp.reload
      expect(stamp.attributes).to include('redeemed' => true)
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes a stamp' do
      stamp = Stamp.create(valid_attributes)
      expect do
        delete :destroy, params: { id: stamp.to_param }
      end.to change(Stamp, :count).by(-1)
    end
  end
end
