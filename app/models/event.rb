class Event < ApplicationRecord
    has_many :attended_events, foreign_key: :attended_event_id
    has_many :attendees, through: :attended_events source: :event_attendee
    belongs_to :host, class_name: "User"
end


