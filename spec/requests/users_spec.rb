# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Users", type: :request do
    let (:valid_details) do
        {
            username: "testUser123",
            password: "testPassword123"
        }
    end

    let (:invalid_details) do
      {
        username: nil,
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

        context 'with invalid details' do
            it 'does not create a new user' do
              expected_output = {
                status: 401
              }

              expect do
                post "/api/v1/users", params: { user: invalid_details }
              end.to change(User, :count).by(0)
              
              expect(response.body).to eq(expected_output.to_json)
            end
        end
    end
end
