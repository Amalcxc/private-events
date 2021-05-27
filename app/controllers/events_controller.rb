class EventsController < ApplicationController
  def index
  end

  def show
    @user = event_params
  end

  private
  def event_params
    @user = User.find_by(id: params[:id])
  end
end