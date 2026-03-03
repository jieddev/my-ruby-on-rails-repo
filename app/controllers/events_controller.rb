class EventsController < ApplicationController
  def index
    @event = Event.new
  end

  # def new 
  #   @event = Event.new
  # end

  def show 
    @event = Event.find(params[:id])
  end


  def create 
    @event = current_user.events.build(event_params) 

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end

  end

  private 

    def event_params
      params.require(:event).permit(:title, :description)
    end


end
