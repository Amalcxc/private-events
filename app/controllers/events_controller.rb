class EventsController < ApplicationController
  def index
  end

  def new
    @event = current_user.events.build
  end

  def show
    @user = event_params
  end

  def create
    @event = current_user.events.build(params_e)

    respond_to do |format|
      if @event.save
        format.html { redirect_to root_path, notice: "Tweet was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def event_params
    @user = User.find_by(id: params[:id])
  end

  def params_e
    params.require(:event).permit(:title, :body, :location, :date)
  end
end