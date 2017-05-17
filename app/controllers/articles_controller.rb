class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def edit

  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end