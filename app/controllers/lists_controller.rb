class ListsController < ApplicationController
  def attended
    @event = Event.find_by_id(params[:id])
    attentee = current_user.event_attendees.create(attended_event_id: @event.id)
    if attentee.save
      redirect_to @event
    else
      redirect_to @event, notice: 'User already attending'
  end
end
