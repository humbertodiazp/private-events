class Event < ApplicationRecord
    has_many :attended_events, foreign_key: :attended_event_id
    has_many :attendees, through: :event_attendents, source: :event_attendee
    belongs_to :host, class_name: "User"
end



# class EventAttendence 
#     belongs_to :event_attendee, class_name: "User"
#     belongs_to :attended_event, class_name: "Post"
#   end