class UsersController < ApplicationController
  def create
    user = User.create(
    username: params['user']['username'],
    password: params['user']['password']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user.username
      }
    else
      render json: { status: 401 }
    end
  end

end
