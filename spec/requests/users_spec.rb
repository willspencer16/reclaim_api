# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Users", type: :request do
    let (:valid_details) do
        {
            username: "testUser123",
            password: "testPassword123"
        }
    end
    
    describe 'POST #create' do
        context 'with valid details' do
            it 'creates a new user' do
                expect do
                    post "/api/v1/users", params: { user: valid_details }
                end.to change(User, :count).by(1)
            end
        end
    end
end