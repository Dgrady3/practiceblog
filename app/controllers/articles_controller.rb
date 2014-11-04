class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(params[:article])

    @article.save
    recirect_to @article
  end

  private
    def articles_params
      params.require(:article).permit(:title, :text)
    end
end
