class EventsController < ApplicationController
  
  def index
    @events= Event.all
  end

  def new
    @events = Event.new 
  end

  def event_creator 
    


end
