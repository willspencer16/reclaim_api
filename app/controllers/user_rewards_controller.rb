class UserRewardsController < ApplicationController
  before_action :find_user_reward, only: %i[show update destroy]

  def index
    @user_rewards = UserReward.order('created_at DESC')
    render json: @user_rewards
  end

  def show
    render json: @user_reward
  end

  def create
    @user_reward = UserReward.create(reward_param)

    if @user_reward.save
      render json: @user_reward, status: :created
    else
      render json: @user_reward.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user_reward.update(reward_param)
      render json: @user_reward, status: :created
    else
      render json: @user_reward.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user_reward.destroy
    head :no_content, status: :ok
  end

  private

  def find_user_reward
    @user_reward = UserReward.find(params[:id])
  end

  def user_reward_param
    params.require(:reward).permit(:user_id, :reward_id, :redeemed)
  end
end
