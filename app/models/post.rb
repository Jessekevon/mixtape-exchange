class Post < ActiveRecord::Base
	before_save :default_values
  def default_values
  	@myimages = ["covers/cover1.jpeg", "covers/cover2.jpeg", "covers/cover3.jpeg", "covers/cover4.jpeg", "covers/cover5.jpeg", "covers/cover6.jpeg"]
    self.post_img ||= @myimages.sample
  end

	belongs_to :user

	acts_as_voteable

	acts_as_commontable

	acts_as_taggable

	mount_uploader :post_img, ImageUploader
end
