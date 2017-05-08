class ArticlesController < ApplicationController
  def create
    @category = Category.find(params[:category_id])
    @article = @category.articles.create(article_params)
    redirect_to category_path(@category)
  end

  def new
    @category = Category.find(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def show
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update_attributes(article_params)
    redirect_to category_path(@article.category)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to category_path(@article.category)
  end

  private
    def article_params
      params.require(:article).permit(:price, :email, :title, :description)
    end
end
