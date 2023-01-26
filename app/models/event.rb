class Event < ApplicationRecord
    has_many :events
    has_many :attendees, through: :attended_events source: :event_attendee
    belongs_to :host, class_name: "User"
end


# class AttendEvent 
#     belongs_to :attendee, class_name: "User"
#     belongs_to :event, class_name: "Post"
# end
