class MainController < ApplicationController

before_action :authenticate_user!

	def Chat
			render 'chat'
	end 
end


