class UserRewardsController < ApplicationController
  def index
    @user_rewards = UserReward.order('created_at DESC')
    render json: @user_rewards
  end

  def show
  end

  def create
  end

  def destory
  end

  def update
  end
end
