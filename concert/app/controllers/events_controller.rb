class EventsController < ApplicationController
	def index
		@my_event = Event.all
		render 'index'
	end 
	def show
		@my_event = Event.find(params[:id])
		render 'show'
	end 
	def new
		@my_event = Event.new
		render 'new'
	end 
	def create 
		@my_event = Event.new(
			:name => params[:event][:name],
			:description => params[:event][:description])
		@my_event.save
		redirect_to events_path(@my_event)
	end 
end
