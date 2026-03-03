class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  

  def index
    @events = Event.all 
  end



end
