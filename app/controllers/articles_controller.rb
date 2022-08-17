class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    @article = article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def new
    @article = article.new
  end

  def edit
    @article = article.find(params[:id])
  end

  def show
    @article = article.find(params[:id])
  end

  def update
    @article = article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy
    @article = article.find(params[:id])
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
