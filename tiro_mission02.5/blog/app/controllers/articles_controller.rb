class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title,:author,:text))
    @article.save
  end

  def destroy
    #puts params[:check_box]
    Article.destroy(params[:check_box])
    redirect_to '/'
  end

end
