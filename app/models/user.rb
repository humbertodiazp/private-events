class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :attended_events, foreign_key: :event_attendee_id
  has_many :attendees, through: :event_attendents
  has_many :created_events, class_name: "Event", foreign_key: :creater_id, 

end


