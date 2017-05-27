class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show; end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
    @event.save
    redirect_to events_path
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to events_path
  end

  def user_events
    @events = current_user.events
  end
end

private

def event_params
  params.require(:event).permit(:title, :user_id)
end
