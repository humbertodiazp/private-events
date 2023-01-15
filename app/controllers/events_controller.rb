class EventsController < ApplicationController
  
  def Index
    @event= Event.all
  end
  
end
