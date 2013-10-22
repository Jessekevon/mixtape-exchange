class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts

  acts_as_voter

  acts_as_commontator

  acts_as_followable
  acts_as_follower

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
