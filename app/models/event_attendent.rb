class EventAttendent < ApplicationRecord
    # class EventAttendents
    belongs_to :event_attendee, class_name: "User"
    belongs_to :attended_event, class_name: "Post"
end