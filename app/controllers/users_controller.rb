class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
    @past_events = current_user.attended_events.previous
    @upcoming_events = current_user.attended_events.upcoming
  end
end
