class Post < ActiveRecord::Base
	belongs_to :user

	acts_as_voteable

	acts_as_commontable
end
