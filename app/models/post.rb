class Post < ActiveRecord::Base
	belongs_to :user

	acts_as_voteable

	acts_as_commontable

	mount_uploader :post_img, ImageUploader
end
