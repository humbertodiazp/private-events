class EventsController < ApplicationController
  
  def index
    @events= Event.all
  end

  def create 
    @event = @creator.events.build(user_params)

  end


end
