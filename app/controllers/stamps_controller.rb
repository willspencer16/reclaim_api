# frozen_string_literal: true

class StampsController < ApplicationController
  before_action :find_stamp, only: %i[update destroy]

  def index
    @stamps = Stamp.order('created_at DESC')
    render json: @stamps
  end

  def show
    render json: @stamp
  end

  def create
    @stamp = Stamp.create(stamp_param)

    if @stamp.save
      render json: @stamp, status: :created
    else
      render json: @stamp.errors, status: :unprocessable_entity
    end
  end

  def update
    if @stamp.update(stamp_param)
      render json: @stamp, status: :created
    else
      render json: @stamp.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @stamp.destroy
    head :no_content, status: :ok
  end

  private

  def find_stamp
    @stamp = Stamp.find(params[:id])
  end

  def stamp_param
    params.require(:stamp).permit(:user_id, :business_id, :redeemed)
  end
end
