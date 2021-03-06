class UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user.username
      }
    else
      render json: { status: 401 }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
