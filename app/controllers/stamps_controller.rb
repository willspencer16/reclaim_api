# frozen_string_literal: true

class StampsController < ApplicationController
  def index
    stamps = Stamp.order('created_at DESC')
    render json: stamps
  end

  def create
    stamp = stamp.create(stamp_param)
    render json: stamp
  end

  def update
    stamp = Stamp.find(params[:id])
    stamp.update_attributes(stamp_param)
    render json: stamp
  end

  def destroy
    stamp = Stamp.find(params[:id])
    todo.destroy
    head :no_content, status: :ok
  end

  private

  def stamp_param
    params.require(:stamp).permit(:user_id, :business_id, :redeemed)
  end
end
