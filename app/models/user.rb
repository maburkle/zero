class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :forums
  has_many :subjects
  has_many :topics
  has_many :discusses
  has_many :posts
  has_many :events
  has_many :rsvps
  has_many :events, through: :rsvps 

  extend FriendlyId
  friendly_id :username

end
