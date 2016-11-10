class SiteController < ApplicationController
	def home
		render 'home'
	end 
	def text
		render 'SubmitTextForInspection'
	end 
end
