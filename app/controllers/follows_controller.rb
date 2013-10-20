class FollowsController < ApplicationController
	before_action :set_user

	def show
		current_user.follow(@user)
		redirect_to user_url(@user.id)
	end

	def destroy
		current_user.stop_following(@user)
		redirect_to user_url(@user.id)
	end

	private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

end
