class HomesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@articles = Article.all
		@users = User.all
	end
end
