class HomesController < ApplicationController
before_filter :authorize
	
	def index
		@articles = Article.all
	end
end
