class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :events
  has_many :attendees, through: :attended_events 
  has_many :hosts, class_name: "Post", foreign_key: :host_id, 

end
