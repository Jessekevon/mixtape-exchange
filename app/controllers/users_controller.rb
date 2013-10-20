require 'pry'

class UsersController < ApplicationController
	before_action :set_user

	def show
		
	end

	# def follow
	# 	current_user.follow(@user)
	# 	redirect_to :action => 'show'
	# end

	# def unfollow
	# 	current_user.stop_following(@user)
	# 	redirect_to :action => 'show'
	# end

	private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end

