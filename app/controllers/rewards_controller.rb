# frozen_string_literal: true

class RewardsController < ApplicationController
  before_action :find_reward, only: %i[update destroy]

  def index
    @rewards = Reward.order('created_at DESC')
    render json: @rewards
  end

  def show
    render json: @reward
  end

  def create
    @reward = Reward.create(reward_param)

    if @reward.save
      render json: @reward, status: :created
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end

  def update
    if @reward.update(reward_param)
      render json: @reward, status: :created
    else
      render json: @reward.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reward.destroy
    head :no_content, status: :ok
  end

  private

  def find_reward
    @reward = Reward.find(params[:id])
  end

  def reward_param
    params.require(:reward).permit(:reward_name, :reward_content, :business_id)
  end
end
