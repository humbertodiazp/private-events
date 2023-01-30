class EventsController < ApplicationController
  
  def index
    @events= Event.all
  end

  def create 
    @event = @user.creator.build(event_params)

  end


end
