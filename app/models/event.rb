class Event < ApplicationRecord
    has_many :event_attendees, foreign_key: :attendee_id
    has_many :attendees, through: :event_attendees, source: :event_attendee 
    belongs_to :host, class_name: "User"
end
