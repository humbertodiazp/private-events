class Event < ApplicationRecord
    has_many :events
    has_many :attendees, through: :attended_events source: :event_attendee
    belongs_to :host, class_name: "User"
end


