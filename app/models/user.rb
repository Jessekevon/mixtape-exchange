class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts

  acts_as_commontator

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
