class UsersController < ApplicationController

	def show
	end

	private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

end
