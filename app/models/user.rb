class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  
  has_many :attendees, class_name: "User", foreign_key: "host_id"
  belongs_to :host, class_name: "User", optional: true 

end
