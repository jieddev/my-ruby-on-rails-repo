class EventAttendancesController < ApplicationController
  def index 
    @events = Event.all
  end

  def create 
    # @user = User.find(current_user[:id])
    @user = current_user
    @event = Event.find(params[:event_id])

    @event_attendance = EventAttendance.new(attendee: @user, attended_event: @event)

    if @event_attendance.save 
      # redirect_to @event_attendance
      redirect_to @event
    else
      render :index, status: :unprocessable_entity
    end

  end


end
