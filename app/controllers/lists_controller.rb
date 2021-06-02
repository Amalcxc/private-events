class ListsController < ApplicationController
  def attend
    @event = Event.find_by(id: params[:id])
    r = current_user.lists.build(attended_event_id: @event.id)
    if r.save
      redirect_to @event
    else
      redirect_to @event, notice: 'already attending'
    end
  end
end
