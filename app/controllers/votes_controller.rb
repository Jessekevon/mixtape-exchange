class VotesController < ApplicationController
	before_action :set_post

	def show
		current_user.vote_for(@post)
		redirect_to posts_url
	end

	private

	# Callbacks
	def set_post
    @post = Post.find(params[:id])
  end
end
