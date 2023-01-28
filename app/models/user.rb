class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :event_regestries, foreign_key: :event_attendee_id
  has_many :attended_events, through: :event_regestries
  has_many :hosted_events, class_name: "Event", foreign_key: :host_id, 

end

