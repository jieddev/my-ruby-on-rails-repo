class UserController < ApplicationController
  before_action :authenticate_user!

  def show
    user = User.find(current_user.id)
    @events = user.events

    @attended_events = EventAttendance.where(attendee_id: current_user.id)

  end

  def index
  end
end
