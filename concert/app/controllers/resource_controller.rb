class ResourceController < ApplicationController
	def index
		@resources = Resource.all
		render 'index'
	end  
end
