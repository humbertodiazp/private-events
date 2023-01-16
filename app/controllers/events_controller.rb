class EventsController < ApplicationController
  
  def Index
    @events= Event.all
  end

end
