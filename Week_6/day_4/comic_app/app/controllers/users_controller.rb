class UsersController < ApplicationController
	def Show 
		authenticate_user!

			@the_user = User.find(params[:id])
			@comics_list = @the_user.comics
			render :show
	end 
end
