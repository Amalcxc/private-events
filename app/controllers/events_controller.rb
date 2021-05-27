class EventsController < ApplicationController
  def index
  end

  def show
    @users = User.event.find_by(id: event_params)
  end

  private
  def event_params
    params.require(:events).permit(:id)
  end
end