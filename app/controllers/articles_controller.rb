class ArticlesController < ApplicationController

	before_filter :authorize

	def new
		@article = Article.new
	end

	def create
		logger.debug "params = #{params.to_s}"
		 @article = Article.new(params[:article])
    if @article.save
      redirect_to @article
    else
      render "new"
    end
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit

		 @article = Article.find(params[:id])
	end
  def update
	    @article = Article.find(params[:id])
	      if @article.update_attributes(params[:article])
	    redirect_to @article, notice: 'Article was successfully updated.'
	      else
	       render action: "edit" 
	      end
    end
  

	def destroy
		@article = Article.find(params[:id])
    @article.destroy
    redirect_to homes_url
	end 
end
