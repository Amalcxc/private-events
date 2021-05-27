class HomeController < ApplicationController
  def index
    @users = User.all
    
  end

  def show
    @events = Event.all
    @users = User.all
    @author_id = Event.first.creator_id
  end
end