class UserController < ApplicationController
  before_action :authenticate_user!

  def show
    user = User.find(current_user.id)
    @events = user.events
  end

  def index
  end
end
