class Event < ApplicationRecord
    has_many :event_regestries, foreign_key: :event_regestry_id
    has_many :attendees, through: :event_regestries, source: :event_attendee
    belongs_to :host, class_name: "User"
end



# class EventRegistering 
#     belongs_to :event_attendee, class_name: "User"
#     belongs_to :registered_event, class_name: "Post"
#   end