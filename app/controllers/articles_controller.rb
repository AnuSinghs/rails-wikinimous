class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    # using the set_article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  def edit
    # using the set_article
  end

  def update
    @article.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :completed)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
