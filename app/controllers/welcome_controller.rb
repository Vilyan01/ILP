class WelcomeController < ApplicationController
	def index
		@posts = Post.all.reverse
		@events = Event.all
	end
end